.class public final enum Landroid/icu/impl/ICUResourceBundle$OpenType;
.super Ljava/lang/Enum;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/ICUResourceBundle$OpenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/ICUResourceBundle$OpenType;

.field public static final enum DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

.field public static final enum LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

.field public static final enum LOCALE_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/impl/ICUResourceBundle$OpenType;

    const-string/jumbo v1, "LOCALE_DEFAULT_ROOT"

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ICUResourceBundle$OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    new-instance v0, Landroid/icu/impl/ICUResourceBundle$OpenType;

    const-string/jumbo v1, "LOCALE_ROOT"

    invoke-direct {v0, v1, v3}, Landroid/icu/impl/ICUResourceBundle$OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    new-instance v0, Landroid/icu/impl/ICUResourceBundle$OpenType;

    const-string/jumbo v1, "DIRECT"

    invoke-direct {v0, v1, v4}, Landroid/icu/impl/ICUResourceBundle$OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/impl/ICUResourceBundle$OpenType;

    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->$VALUES:[Landroid/icu/impl/ICUResourceBundle$OpenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle$OpenType;
    .locals 1

    const-class v0, Landroid/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle$OpenType;

    return-object v0
.end method

.method public static values()[Landroid/icu/impl/ICUResourceBundle$OpenType;
    .locals 1

    sget-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->$VALUES:[Landroid/icu/impl/ICUResourceBundle$OpenType;

    return-object v0
.end method
