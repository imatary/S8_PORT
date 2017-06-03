.class public final enum Landroid/icu/text/TimeZoneNames$NameType;
.super Ljava/lang/Enum;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/TimeZoneNames$NameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const-string/jumbo v1, "LONG_GENERIC"

    invoke-direct {v0, v1, v3}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const-string/jumbo v1, "LONG_STANDARD"

    invoke-direct {v0, v1, v4}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const-string/jumbo v1, "LONG_DAYLIGHT"

    invoke-direct {v0, v1, v5}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const-string/jumbo v1, "SHORT_GENERIC"

    invoke-direct {v0, v1, v6}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const-string/jumbo v1, "SHORT_STANDARD"

    invoke-direct {v0, v1, v7}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const-string/jumbo v1, "SHORT_DAYLIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const-string/jumbo v1, "EXEMPLAR_LOCATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->$VALUES:[Landroid/icu/text/TimeZoneNames$NameType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/TimeZoneNames$NameType;
    .locals 1

    const-class v0, Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/TimeZoneNames$NameType;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/TimeZoneNames$NameType;
    .locals 1

    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->$VALUES:[Landroid/icu/text/TimeZoneNames$NameType;

    return-object v0
.end method
