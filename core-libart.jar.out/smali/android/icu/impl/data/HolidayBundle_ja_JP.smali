.class public Landroid/icu/impl/data/HolidayBundle_ja_JP;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_ja_JP.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v5, [Landroid/icu/util/Holiday;

    new-instance v1, Landroid/icu/util/SimpleHoliday;

    const-string/jumbo v2, "National Foundation Day"

    const/16 v3, 0xb

    invoke-direct {v1, v5, v3, v4, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_ja_JP;->fHolidays:[Landroid/icu/util/Holiday;

    new-array v0, v5, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "holidays"

    aput-object v2, v1, v4

    sget-object v2, Landroid/icu/impl/data/HolidayBundle_ja_JP;->fHolidays:[Landroid/icu/util/Holiday;

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/impl/data/HolidayBundle_ja_JP;->fContents:[[Ljava/lang/Object;

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
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_ja_JP;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
