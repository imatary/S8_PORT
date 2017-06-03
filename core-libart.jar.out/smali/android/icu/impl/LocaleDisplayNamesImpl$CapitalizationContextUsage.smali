.class final enum Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
.super Ljava/lang/Enum;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CapitalizationContextUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string/jumbo v1, "LANGUAGE"

    invoke-direct {v0, v1, v3}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string/jumbo v1, "SCRIPT"

    invoke-direct {v0, v1, v4}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string/jumbo v1, "TERRITORY"

    invoke-direct {v0, v1, v5}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string/jumbo v1, "VARIANT"

    invoke-direct {v0, v1, v6}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string/jumbo v1, "KEY"

    invoke-direct {v0, v1, v7}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const-string/jumbo v1, "KEYVALUE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->$VALUES:[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
    .locals 1

    const-class v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    return-object v0
.end method

.method public static values()[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
    .locals 1

    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->$VALUES:[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    return-object v0
.end method
