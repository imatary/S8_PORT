.class public final enum Landroid/icu/util/Currency$CurrencyUsage;
.super Ljava/lang/Enum;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CurrencyUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/Currency$CurrencyUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/Currency$CurrencyUsage;

.field public static final enum CASH:Landroid/icu/util/Currency$CurrencyUsage;

.field public static final enum STANDARD:Landroid/icu/util/Currency$CurrencyUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/util/Currency$CurrencyUsage;

    const-string/jumbo v1, "STANDARD"

    invoke-direct {v0, v1, v2}, Landroid/icu/util/Currency$CurrencyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    new-instance v0, Landroid/icu/util/Currency$CurrencyUsage;

    const-string/jumbo v1, "CASH"

    invoke-direct {v0, v1, v3}, Landroid/icu/util/Currency$CurrencyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/Currency$CurrencyUsage;->CASH:Landroid/icu/util/Currency$CurrencyUsage;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/util/Currency$CurrencyUsage;

    sget-object v1, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/Currency$CurrencyUsage;->CASH:Landroid/icu/util/Currency$CurrencyUsage;

    aput-object v1, v0, v3

    sput-object v0, Landroid/icu/util/Currency$CurrencyUsage;->$VALUES:[Landroid/icu/util/Currency$CurrencyUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/Currency$CurrencyUsage;
    .locals 1

    const-class v0, Landroid/icu/util/Currency$CurrencyUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Currency$CurrencyUsage;

    return-object v0
.end method

.method public static values()[Landroid/icu/util/Currency$CurrencyUsage;
    .locals 1

    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->$VALUES:[Landroid/icu/util/Currency$CurrencyUsage;

    return-object v0
.end method
