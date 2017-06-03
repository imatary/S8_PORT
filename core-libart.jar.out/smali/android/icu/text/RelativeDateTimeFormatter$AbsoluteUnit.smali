.class public final enum Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AbsoluteUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum MONTH:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum WEEK:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field public static final enum YEAR:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string/jumbo v1, "SUNDAY"

    invoke-direct {v0, v1, v3}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string/jumbo v1, "MONDAY"

    invoke-direct {v0, v1, v4}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string/jumbo v1, "TUESDAY"

    invoke-direct {v0, v1, v5}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string/jumbo v1, "WEDNESDAY"

    invoke-direct {v0, v1, v6}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string/jumbo v1, "THURSDAY"

    invoke-direct {v0, v1, v7}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string/jumbo v1, "FRIDAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string/jumbo v1, "SATURDAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string/jumbo v1, "DAY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string/jumbo v1, "WEEK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string/jumbo v1, "MONTH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string/jumbo v1, "YEAR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string/jumbo v1, "NOW"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string/jumbo v1, "QUARTER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v0, 0xd

    new-array v0, v0, [Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .locals 1

    const-class v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .locals 1

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    return-object v0
.end method
