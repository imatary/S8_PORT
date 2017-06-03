.class public final Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;
.super Ljava/lang/Object;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CurrencyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencyFormatInfo"
.end annotation


# instance fields
.field public final currencyPattern:Ljava/lang/String;

.field public final monetaryGroupingSeparator:C

.field public final monetarySeparator:C


# direct methods
.method public constructor <init>(Ljava/lang/String;CC)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->currencyPattern:Ljava/lang/String;

    iput-char p2, p0, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->monetarySeparator:C

    iput-char p3, p0, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->monetaryGroupingSeparator:C

    return-void
.end method
