.class public final enum Landroid/icu/text/TimeZoneFormat$TimeType;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/TimeZoneFormat$TimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/TimeZoneFormat$TimeType;

.field public static final enum DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

.field public static final enum STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

.field public static final enum UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/text/TimeZoneFormat$TimeType;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$TimeType;

    const-string/jumbo v1, "STANDARD"

    invoke-direct {v0, v1, v3}, Landroid/icu/text/TimeZoneFormat$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$TimeType;

    const-string/jumbo v1, "DAYLIGHT"

    invoke-direct {v0, v1, v4}, Landroid/icu/text/TimeZoneFormat$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/text/TimeZoneFormat$TimeType;

    sget-object v1, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->$VALUES:[Landroid/icu/text/TimeZoneFormat$TimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat$TimeType;
    .locals 1

    const-class v0, Landroid/icu/text/TimeZoneFormat$TimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/TimeZoneFormat$TimeType;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/TimeZoneFormat$TimeType;
    .locals 1

    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->$VALUES:[Landroid/icu/text/TimeZoneFormat$TimeType;

    return-object v0
.end method
