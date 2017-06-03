.class final Landroid/icu/text/DecimalFormatSymbols$1;
.super Landroid/icu/impl/SoftCache;
.source "DecimalFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DecimalFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache",
        "<",
        "Landroid/icu/util/ULocale;",
        "Landroid/icu/text/DecimalFormatSymbols$CacheData;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Landroid/icu/util/ULocale;Ljava/lang/Void;)Landroid/icu/text/DecimalFormatSymbols$CacheData;
    .locals 1

    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->loadSymbols(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols$CacheData;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/icu/util/ULocale;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DecimalFormatSymbols$1;->createInstance(Landroid/icu/util/ULocale;Ljava/lang/Void;)Landroid/icu/text/DecimalFormatSymbols$CacheData;

    move-result-object v0

    return-object v0
.end method
