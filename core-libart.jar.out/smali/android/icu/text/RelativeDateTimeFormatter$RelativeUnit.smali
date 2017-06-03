.class public final enum Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RelativeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum MONTHS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum QUARTERS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string/jumbo v1, "SECONDS"

    invoke-direct {v0, v1, v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string/jumbo v1, "MINUTES"

    invoke-direct {v0, v1, v4}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string/jumbo v1, "HOURS"

    invoke-direct {v0, v1, v5}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string/jumbo v1, "DAYS"

    invoke-direct {v0, v1, v6}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string/jumbo v1, "WEEKS"

    invoke-direct {v0, v1, v7}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string/jumbo v1, "MONTHS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONTHS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string/jumbo v1, "YEARS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string/jumbo v1, "QUARTERS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->QUARTERS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONTHS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->QUARTERS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .locals 1

    const-class v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .locals 1

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    return-object v0
.end method
