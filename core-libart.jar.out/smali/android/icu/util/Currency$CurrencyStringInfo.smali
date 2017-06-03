.class final Landroid/icu/util/Currency$CurrencyStringInfo;
.super Ljava/lang/Object;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CurrencyStringInfo"
.end annotation


# instance fields
.field private currencyString:Ljava/lang/String;

.field private isoCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/util/Currency$CurrencyStringInfo;->isoCode:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/util/Currency$CurrencyStringInfo;->currencyString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrencyString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Currency$CurrencyStringInfo;->currencyString:Ljava/lang/String;

    return-object v0
.end method

.method public getISOCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Currency$CurrencyStringInfo;->isoCode:Ljava/lang/String;

    return-object v0
.end method
