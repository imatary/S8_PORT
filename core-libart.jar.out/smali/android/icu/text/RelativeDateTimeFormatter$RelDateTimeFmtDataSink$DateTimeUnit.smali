.class final enum Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DateTimeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum DAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum HOUR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum MINUTE:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum MONTH:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum SECOND:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum WEEK:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field public static final enum YEAR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;


# instance fields
.field absUnit:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;


# direct methods
.method static synthetic -wrap0(Ljava/lang/CharSequence;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;
    .locals 1

    invoke-static {p0}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const-string/jumbo v1, "SECOND"

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-direct {v0, v1, v6, v2, v5}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->SECOND:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const-string/jumbo v1, "MINUTE"

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-direct {v0, v1, v7, v2, v5}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->MINUTE:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const-string/jumbo v1, "HOUR"

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-direct {v0, v1, v8, v2, v5}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->HOUR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const-string/jumbo v1, "DAY"

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-direct {v0, v1, v9, v2, v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const-string/jumbo v1, "WEEK"

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const-string/jumbo v1, "MONTH"

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONTHS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/4 v4, 0x5

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const-string/jumbo v1, "QUARTER"

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->QUARTERS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const-string/jumbo v1, "YEAR"

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/4 v4, 0x7

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const-string/jumbo v1, "SUNDAY"

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v5, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const-string/jumbo v1, "MONDAY"

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v5, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const-string/jumbo v1, "TUESDAY"

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v5, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const-string/jumbo v1, "WEDNESDAY"

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v5, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const-string/jumbo v1, "THURSDAY"

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v5, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const-string/jumbo v1, "FRIDAY"

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v5, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const-string/jumbo v1, "SATURDAY"

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v5, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const/16 v0, 0xf

    new-array v0, v0, [Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->SECOND:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->MINUTE:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->HOUR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    aput-object v1, v0, v8

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    aput-object v1, v0, v9

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    iput-object p4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->absUnit:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    return-void
.end method

.method private static final orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;
    .locals 1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "day"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    return-object v0

    :cond_1
    const-string/jumbo v0, "sun"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    return-object v0

    :cond_2
    const-string/jumbo v0, "mon"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    return-object v0

    :cond_3
    const-string/jumbo v0, "tue"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    return-object v0

    :cond_4
    const-string/jumbo v0, "wed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    return-object v0

    :cond_5
    const-string/jumbo v0, "thu"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    return-object v0

    :cond_6
    const-string/jumbo v0, "fri"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    return-object v0

    :cond_7
    const-string/jumbo v0, "sat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "hour"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->HOUR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    return-object v0

    :cond_8
    const-string/jumbo v0, "week"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    return-object v0

    :cond_9
    const-string/jumbo v0, "year"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "month"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "minute"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->MINUTE:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    return-object v0

    :cond_a
    const-string/jumbo v0, "second"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->SECOND:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "quarter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;
    .locals 1

    const-class v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    return-object v0
.end method

.method public static values()[Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;
    .locals 1

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    return-object v0
.end method
