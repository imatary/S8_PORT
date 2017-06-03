.class public Landroid/icu/impl/data/HolidayBundle_en_US;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_en_US.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v13, 0x8

    const/4 v1, 0x0

    const/4 v12, 0x4

    const/4 v3, 0x2

    const/4 v11, 0x1

    const/16 v0, 0x12

    new-array v10, v0, [Landroid/icu/util/Holiday;

    sget-object v0, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    aput-object v0, v10, v1

    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v4, "Martin Luther King Day"

    const/16 v2, 0xf

    const/16 v5, 0x7c2

    invoke-direct/range {v0 .. v5}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    aput-object v0, v10, v11

    new-instance v4, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v8, "Presidents\' Day"

    const/16 v6, 0xf

    const/16 v9, 0x7b8

    move v5, v11

    move v7, v3

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    aput-object v4, v10, v3

    new-instance v4, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v7, "Washington\'s Birthday"

    const/16 v6, 0x16

    const/16 v8, 0x6f0

    const/16 v9, 0x7b7

    move v5, v11

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;II)V

    const/4 v0, 0x3

    aput-object v4, v10, v0

    sget-object v0, Landroid/icu/util/EasterHoliday;->GOOD_FRIDAY:Landroid/icu/util/EasterHoliday;

    aput-object v0, v10, v12

    sget-object v0, Landroid/icu/util/EasterHoliday;->EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

    const/4 v2, 0x5

    aput-object v0, v10, v2

    new-instance v4, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v8, "Mother\'s Day"

    const/16 v9, 0x77a

    move v5, v12

    move v6, v13

    move v7, v11

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/4 v0, 0x6

    aput-object v4, v10, v0

    new-instance v4, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v8, "Memorial Day"

    const/16 v6, 0x1f

    const/4 v7, -0x2

    const/16 v9, 0x7b3

    move v5, v12

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/4 v0, 0x7

    aput-object v4, v10, v0

    new-instance v4, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v7, "Memorial Day"

    const/16 v6, 0x1e

    const/16 v8, 0x74c

    const/16 v9, 0x7b2

    move v5, v12

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;II)V

    aput-object v4, v10, v13

    new-instance v4, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v8, "Father\'s Day"

    const/4 v5, 0x5

    const/16 v6, 0xf

    const/16 v9, 0x7a4

    move v7, v11

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/16 v0, 0x9

    aput-object v4, v10, v0

    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v2, "Independence Day"

    const/4 v4, 0x6

    const/16 v5, 0x6f0

    invoke-direct {v0, v4, v12, v2, v5}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;I)V

    const/16 v2, 0xa

    aput-object v0, v10, v2

    new-instance v4, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v8, "Labor Day"

    const/16 v9, 0x766

    move v5, v13

    move v6, v11

    move v7, v3

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/16 v0, 0xb

    aput-object v4, v10, v0

    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v2, "Election Day"

    const/16 v4, 0xa

    const/4 v5, 0x3

    invoke-direct {v0, v4, v3, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0xc

    aput-object v0, v10, v2

    new-instance v4, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v8, "Columbus Day"

    const/16 v5, 0x9

    const/16 v9, 0x7b3

    move v6, v13

    move v7, v3

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/16 v0, 0xd

    aput-object v4, v10, v0

    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v2, "Halloween"

    const/16 v4, 0x9

    const/16 v5, 0x1f

    invoke-direct {v0, v4, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    const/16 v2, 0xe

    aput-object v0, v10, v2

    new-instance v0, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v2, "Veterans\' Day"

    const/16 v4, 0xa

    const/16 v5, 0xb

    const/16 v6, 0x77e

    invoke-direct {v0, v4, v5, v2, v6}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;I)V

    const/16 v2, 0xf

    aput-object v0, v10, v2

    new-instance v4, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v8, "Thanksgiving"

    const/16 v5, 0xa

    const/16 v6, 0x16

    const/4 v7, 0x5

    const/16 v9, 0x747

    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    const/16 v0, 0x10

    aput-object v4, v10, v0

    sget-object v0, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    const/16 v2, 0x11

    aput-object v0, v10, v2

    sput-object v10, Landroid/icu/impl/data/HolidayBundle_en_US;->fHolidays:[Landroid/icu/util/Holiday;

    new-array v0, v11, [[Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "holidays"

    aput-object v3, v2, v1

    sget-object v3, Landroid/icu/impl/data/HolidayBundle_en_US;->fHolidays:[Landroid/icu/util/Holiday;

    aput-object v3, v2, v11

    aput-object v2, v0, v1

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_en_US;->fContents:[[Ljava/lang/Object;

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
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_en_US;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
