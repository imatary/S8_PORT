.class public Landroid/icu/impl/data/HolidayBundle_en_CA;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_en_CA.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v4, 0x4

    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/icu/util/Holiday;

    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    aput-object v1, v0, v5

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v2, "Victoria Day"

    const/16 v3, 0x13

    invoke-direct {v1, v4, v3, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v2, "Canada Day"

    const/4 v3, 0x6

    invoke-direct {v1, v3, v6, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v2, "Civic Holiday"

    const/4 v3, 0x7

    invoke-direct {v1, v3, v6, v7, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v2, "Labor Day"

    invoke-direct {v1, v8, v6, v7, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v2, "Thanksgiving"

    const/16 v3, 0x9

    invoke-direct {v1, v3, v8, v7, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v2, "Remembrance Day"

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v1, v3, v4, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/SimpleHoliday;->BOXING_DAY:Landroid/icu/util/SimpleHoliday;

    aput-object v1, v0, v8

    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_EVE:Landroid/icu/util/SimpleHoliday;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_en_CA;->fHolidays:[Landroid/icu/util/Holiday;

    new-array v0, v7, [[Ljava/lang/Object;

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "holidays"

    aput-object v2, v1, v5

    sget-object v2, Landroid/icu/impl/data/HolidayBundle_en_CA;->fHolidays:[Landroid/icu/util/Holiday;

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "Labor Day"

    aput-object v2, v1, v5

    const-string/jumbo v2, "Labour Day"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_en_CA;->fContents:[[Ljava/lang/Object;

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
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_en_CA;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
