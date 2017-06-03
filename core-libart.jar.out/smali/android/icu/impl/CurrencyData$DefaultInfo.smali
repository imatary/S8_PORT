.class public Landroid/icu/impl/CurrencyData$DefaultInfo;
.super Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CurrencyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultInfo"
.end annotation


# static fields
.field private static final FALLBACK_INSTANCE:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

.field private static final NO_FALLBACK_INSTANCE:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;


# instance fields
.field private final fallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/icu/impl/CurrencyData$DefaultInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/icu/impl/CurrencyData$DefaultInfo;-><init>(Z)V

    sput-object v0, Landroid/icu/impl/CurrencyData$DefaultInfo;->FALLBACK_INSTANCE:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    new-instance v0, Landroid/icu/impl/CurrencyData$DefaultInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/CurrencyData$DefaultInfo;-><init>(Z)V

    sput-object v0, Landroid/icu/impl/CurrencyData$DefaultInfo;->NO_FALLBACK_INSTANCE:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;-><init>()V

    iput-boolean p1, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    return-void
.end method

.method public static final getWithFallback(Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Landroid/icu/impl/CurrencyData$DefaultInfo;->FALLBACK_INSTANCE:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/impl/CurrencyData$DefaultInfo;->NO_FALLBACK_INSTANCE:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    goto :goto_0
.end method


# virtual methods
.method public getFormatInfo(Ljava/lang/String;)Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getPluralName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getSpacingInfo()Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getULocale()Landroid/icu/util/ULocale;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public getUnitPatterns()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/icu/impl/CurrencyData$DefaultInfo;->fallback:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public nameMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public symbolMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
