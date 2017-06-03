.class final Landroid/icu/text/NumberFormatServiceShim$NFFactory;
.super Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;
.source "NumberFormatServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberFormatServiceShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NFFactory"
.end annotation


# instance fields
.field private delegate:Landroid/icu/text/NumberFormat$NumberFormatFactory;


# direct methods
.method constructor <init>(Landroid/icu/text/NumberFormat$NumberFormatFactory;)V
    .locals 1

    invoke-virtual {p1}, Landroid/icu/text/NumberFormat$NumberFormatFactory;->visible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(Z)V

    iput-object p1, p0, Landroid/icu/text/NumberFormatServiceShim$NFFactory;->delegate:Landroid/icu/text/NumberFormat$NumberFormatFactory;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public create(Landroid/icu/impl/ICUService$Key;Landroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->handlesKey(Landroid/icu/impl/ICUService$Key;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, p1, Landroid/icu/impl/ICULocaleService$LocaleKey;

    if-eqz v2, :cond_1

    move-object v0, p1

    nop

    nop

    iget-object v2, p0, Landroid/icu/text/NumberFormatServiceShim$NFFactory;->delegate:Landroid/icu/text/NumberFormat$NumberFormatFactory;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->canonicalLocale()Landroid/icu/util/ULocale;

    move-result-object v3

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/icu/text/NumberFormat$NumberFormatFactory;->createFormat(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p2, p1, v5, p0}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    return-object v5
.end method

.method protected getSupportedIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/NumberFormatServiceShim$NFFactory;->delegate:Landroid/icu/text/NumberFormat$NumberFormatFactory;

    invoke-virtual {v0}, Landroid/icu/text/NumberFormat$NumberFormatFactory;->getSupportedLocaleNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
