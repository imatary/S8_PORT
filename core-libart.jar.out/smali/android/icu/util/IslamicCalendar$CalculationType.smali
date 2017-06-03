.class public final enum Landroid/icu/util/IslamicCalendar$CalculationType;
.super Ljava/lang/Enum;
.source "IslamicCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/IslamicCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CalculationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/IslamicCalendar$CalculationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/IslamicCalendar$CalculationType;

.field public static final enum ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

.field public static final enum ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

.field public static final enum ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

.field public static final enum ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;


# instance fields
.field private bcpType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    const-string/jumbo v1, "ISLAMIC"

    const-string/jumbo v2, "islamic"

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/IslamicCalendar$CalculationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    new-instance v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    const-string/jumbo v1, "ISLAMIC_CIVIL"

    const-string/jumbo v2, "islamic-civil"

    invoke-direct {v0, v1, v4, v2}, Landroid/icu/util/IslamicCalendar$CalculationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    new-instance v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    const-string/jumbo v1, "ISLAMIC_UMALQURA"

    const-string/jumbo v2, "islamic-umalqura"

    invoke-direct {v0, v1, v5, v2}, Landroid/icu/util/IslamicCalendar$CalculationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    new-instance v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    const-string/jumbo v1, "ISLAMIC_TBLA"

    const-string/jumbo v2, "islamic-tbla"

    invoke-direct {v0, v1, v6, v2}, Landroid/icu/util/IslamicCalendar$CalculationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    aput-object v1, v0, v6

    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->$VALUES:[Landroid/icu/util/IslamicCalendar$CalculationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/icu/util/IslamicCalendar$CalculationType;->bcpType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/IslamicCalendar$CalculationType;
    .locals 1

    const-class v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    return-object v0
.end method

.method public static values()[Landroid/icu/util/IslamicCalendar$CalculationType;
    .locals 1

    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->$VALUES:[Landroid/icu/util/IslamicCalendar$CalculationType;

    return-object v0
.end method


# virtual methods
.method bcpType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/IslamicCalendar$CalculationType;->bcpType:Ljava/lang/String;

    return-object v0
.end method
