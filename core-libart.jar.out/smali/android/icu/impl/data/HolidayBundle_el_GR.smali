.class public Landroid/icu/impl/data/HolidayBundle_el_GR;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_el_GR.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x9

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v0, 0xc

    new-array v0, v0, [Landroid/icu/util/Holiday;

    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/util/SimpleHoliday;->EPIPHANY:Landroid/icu/util/SimpleHoliday;

    aput-object v1, v0, v4

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v2, "Independence Day"

    const/16 v3, 0x19

    invoke-direct {v1, v6, v3, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/util/SimpleHoliday;->MAY_DAY:Landroid/icu/util/SimpleHoliday;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/SimpleHoliday;->ASSUMPTION:Landroid/icu/util/SimpleHoliday;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v2, "Ochi Day"

    const/16 v3, 0x1c

    invoke-direct {v1, v7, v3, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/SimpleHoliday;->BOXING_DAY:Landroid/icu/util/SimpleHoliday;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/EasterHoliday;

    const-string/jumbo v2, "Good Friday"

    const/4 v3, -0x2

    invoke-direct {v1, v3, v4, v2}, Landroid/icu/util/EasterHoliday;-><init>(IZLjava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/EasterHoliday;

    const-string/jumbo v2, "Easter Sunday"

    invoke-direct {v1, v5, v4, v2}, Landroid/icu/util/EasterHoliday;-><init>(IZLjava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/icu/util/EasterHoliday;

    const-string/jumbo v2, "Easter Monday"

    invoke-direct {v1, v4, v4, v2}, Landroid/icu/util/EasterHoliday;-><init>(IZLjava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/EasterHoliday;

    const-string/jumbo v2, "Whit Monday"

    const/16 v3, 0x32

    invoke-direct {v1, v3, v4, v2}, Landroid/icu/util/EasterHoliday;-><init>(IZLjava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_el_GR;->fHolidays:[Landroid/icu/util/Holiday;

    new-array v0, v4, [[Ljava/lang/Object;

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "holidays"

    aput-object v2, v1, v5

    sget-object v2, Landroid/icu/impl/data/HolidayBundle_el_GR;->fHolidays:[Landroid/icu/util/Holiday;

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_el_GR;->fContents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getContents()[[Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_el_GR;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
