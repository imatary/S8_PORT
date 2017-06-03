.class public Landroid/icu/util/SimpleHoliday;
.super Landroid/icu/util/Holiday;
.source "SimpleHoliday.java"


# static fields
.field public static final ALL_SAINTS_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final ALL_SOULS_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final ASSUMPTION:Landroid/icu/util/SimpleHoliday;

.field public static final BOXING_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final CHRISTMAS:Landroid/icu/util/SimpleHoliday;

.field public static final CHRISTMAS_EVE:Landroid/icu/util/SimpleHoliday;

.field public static final EPIPHANY:Landroid/icu/util/SimpleHoliday;

.field public static final IMMACULATE_CONCEPTION:Landroid/icu/util/SimpleHoliday;

.field public static final MAY_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

.field public static final NEW_YEARS_EVE:Landroid/icu/util/SimpleHoliday;

.field public static final ST_STEPHENS_DAY:Landroid/icu/util/SimpleHoliday;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x1a

    const/16 v6, 0xa

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v4, 0xb

    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v1, "New Year\'s Day"

    invoke-direct {v0, v3, v5, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v1, "Epiphany"

    const/4 v2, 0x6

    invoke-direct {v0, v3, v2, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->EPIPHANY:Landroid/icu/util/SimpleHoliday;

    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v1, "May Day"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v5, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->MAY_DAY:Landroid/icu/util/SimpleHoliday;

    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v1, "Assumption"

    const/4 v2, 0x7

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->ASSUMPTION:Landroid/icu/util/SimpleHoliday;

    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v1, "All Saints\' Day"

    invoke-direct {v0, v6, v5, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->ALL_SAINTS_DAY:Landroid/icu/util/SimpleHoliday;

    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v1, "All Souls\' Day"

    const/4 v2, 0x2

    invoke-direct {v0, v6, v2, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->ALL_SOULS_DAY:Landroid/icu/util/SimpleHoliday;

    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v1, "Immaculate Conception"

    const/16 v2, 0x8

    invoke-direct {v0, v4, v2, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->IMMACULATE_CONCEPTION:Landroid/icu/util/SimpleHoliday;

    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v1, "Christmas Eve"

    const/16 v2, 0x18

    invoke-direct {v0, v4, v2, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->CHRISTMAS_EVE:Landroid/icu/util/SimpleHoliday;

    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v1, "Christmas"

    const/16 v2, 0x19

    invoke-direct {v0, v4, v2, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v1, "Boxing Day"

    invoke-direct {v0, v4, v7, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->BOXING_DAY:Landroid/icu/util/SimpleHoliday;

    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v1, "St. Stephen\'s Day"

    invoke-direct {v0, v4, v7, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->ST_STEPHENS_DAY:Landroid/icu/util/SimpleHoliday;

    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v1, "New Year\'s Eve"

    const/16 v2, 0x1f

    invoke-direct {v0, v4, v2, v1}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_EVE:Landroid/icu/util/SimpleHoliday;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-instance v2, Landroid/icu/util/SimpleDateRule;

    if-lez p3, :cond_1

    move v1, p3

    :goto_0
    if-lez p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {v2, p1, p2, v1, v0}, Landroid/icu/util/SimpleDateRule;-><init>(IIIZ)V

    invoke-direct {p0, p4, v2}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    return-void

    :cond_1
    neg-int v1, p3

    goto :goto_0
.end method

.method public constructor <init>(IIILjava/lang/String;I)V
    .locals 4

    const/4 v1, 0x0

    new-instance v3, Landroid/icu/util/SimpleDateRule;

    if-lez p3, :cond_0

    move v2, p3

    :goto_0
    if-lez p3, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {v3, p1, p2, v2, v0}, Landroid/icu/util/SimpleDateRule;-><init>(IIIZ)V

    invoke-static {p5, v1, v3}, Landroid/icu/util/SimpleHoliday;->rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    return-void

    :cond_0
    neg-int v0, p3

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public constructor <init>(IIILjava/lang/String;II)V
    .locals 3

    const/4 v0, 0x0

    new-instance v2, Landroid/icu/util/SimpleDateRule;

    if-lez p3, :cond_1

    move v1, p3

    :goto_0
    if-lez p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {v2, p1, p2, v1, v0}, Landroid/icu/util/SimpleDateRule;-><init>(IIIZ)V

    invoke-static {p5, p6, v2}, Landroid/icu/util/SimpleHoliday;->rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    return-void

    :cond_1
    neg-int v1, p3

    goto :goto_0
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/icu/util/SimpleDateRule;

    invoke-direct {v0, p1, p2}, Landroid/icu/util/SimpleDateRule;-><init>(II)V

    invoke-direct {p0, p3, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/icu/util/SimpleDateRule;

    invoke-direct {v0, p1, p2}, Landroid/icu/util/SimpleDateRule;-><init>(II)V

    const/4 v1, 0x0

    invoke-static {p4, v1, v0}, Landroid/icu/util/SimpleHoliday;->rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;II)V
    .locals 1

    new-instance v0, Landroid/icu/util/SimpleDateRule;

    invoke-direct {v0, p1, p2}, Landroid/icu/util/SimpleDateRule;-><init>(II)V

    invoke-static {p4, p5, v0}, Landroid/icu/util/SimpleHoliday;->rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    return-void
.end method

.method private static rangeRule(IILandroid/icu/util/DateRule;)Landroid/icu/util/DateRule;
    .locals 6

    const/4 v4, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    new-instance v1, Landroid/icu/util/RangeDateRule;

    invoke-direct {v1}, Landroid/icu/util/RangeDateRule;-><init>()V

    if-eqz p0, :cond_2

    new-instance v2, Landroid/icu/util/GregorianCalendar;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v4, v3}, Landroid/icu/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Landroid/icu/util/RangeDateRule;->add(Ljava/util/Date;Landroid/icu/util/DateRule;)V

    :goto_0
    if-eqz p1, :cond_1

    new-instance v3, Landroid/icu/util/GregorianCalendar;

    const/16 v4, 0xb

    const/16 v5, 0x1f

    invoke-direct {v3, p1, v4, v5}, Landroid/icu/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/icu/util/RangeDateRule;->add(Ljava/util/Date;Landroid/icu/util/DateRule;)V

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {v1, p2}, Landroid/icu/util/RangeDateRule;->add(Landroid/icu/util/DateRule;)V

    goto :goto_0
.end method
