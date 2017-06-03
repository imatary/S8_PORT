.class public final enum Landroid/icu/impl/TimeZoneGenericNames$Pattern;
.super Ljava/lang/Enum;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/TimeZoneGenericNames$Pattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/TimeZoneGenericNames$Pattern;

.field public static final enum FALLBACK_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

.field public static final enum REGION_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;


# instance fields
.field _defaultVal:Ljava/lang/String;

.field _key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    const-string/jumbo v1, "REGION_FORMAT"

    const-string/jumbo v2, "regionFormat"

    const-string/jumbo v3, "({0})"

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    const-string/jumbo v1, "FALLBACK_FORMAT"

    const-string/jumbo v2, "fallbackFormat"

    const-string/jumbo v3, "{1} ({0})"

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->FALLBACK_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->FALLBACK_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    aput-object v1, v0, v5

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->$VALUES:[Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->_key:Ljava/lang/String;

    iput-object p4, p0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->_defaultVal:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/TimeZoneGenericNames$Pattern;
    .locals 1

    const-class v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    return-object v0
.end method

.method public static values()[Landroid/icu/impl/TimeZoneGenericNames$Pattern;
    .locals 1

    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->$VALUES:[Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    return-object v0
.end method


# virtual methods
.method defaultValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->_defaultVal:Ljava/lang/String;

    return-object v0
.end method

.method key()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->_key:Ljava/lang/String;

    return-object v0
.end method
