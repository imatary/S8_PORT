.class public Landroid/icu/util/ChineseCalendar;
.super Landroid/icu/util/Calendar;
.source "ChineseCalendar.java"


# static fields
.field private static final CHINA_ZONE:Landroid/icu/util/TimeZone;

.field static final CHINESE_DATE_PRECEDENCE:[[[I

.field private static final CHINESE_EPOCH_YEAR:I = -0xa4c

.field private static final LIMITS:[[I

.field private static final SYNODIC_GAP:I = 0x19

.field private static final serialVersionUID:J = 0x6579d5fcd7c0e78cL


# instance fields
.field private transient astro:Landroid/icu/impl/CalendarAstronomer;

.field private epochYear:I

.field private transient isLeapYear:Z

.field private transient newYearCache:Landroid/icu/impl/CalendarCache;

.field private transient winterSolsticeCache:Landroid/icu/impl/CalendarCache;

.field private zoneAstro:Landroid/icu/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x17

    new-array v0, v0, [[I

    const v1, 0x14585

    const v2, 0x14585

    filled-new-array {v6, v6, v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x3c

    const/16 v2, 0x3c

    filled-new-array {v6, v6, v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0xb

    const/16 v2, 0xb

    filled-new-array {v5, v5, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x32

    const/16 v2, 0x37

    filled-new-array {v6, v6, v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v7

    new-array v1, v5, [I

    aput-object v1, v0, v8

    const/16 v1, 0x1d

    const/16 v2, 0x1e

    filled-new-array {v6, v6, v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v9

    const/16 v1, 0x161

    const/16 v2, 0x181

    filled-new-array {v6, v6, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/4 v1, -0x1

    const/4 v2, -0x1

    filled-new-array {v1, v2, v9, v9}, [I

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const v1, -0x4c4b40

    const v2, -0x4c4b40

    const v3, 0x4c4b40

    const v4, 0x4c4b40

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const v1, -0x4c4b40

    const v2, -0x4c4b40

    const v3, 0x4c4b40

    const v4, 0x4c4b40

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0x15

    aput-object v1, v0, v2

    filled-new-array {v5, v5, v6, v6}, [I

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/ChineseCalendar;->LIMITS:[[I

    const/4 v0, 0x2

    new-array v0, v0, [[[I

    const/16 v1, 0x9

    new-array v1, v1, [[I

    new-array v2, v6, [I

    aput v9, v2, v5

    aput-object v2, v1, v5

    const/4 v2, 0x7

    filled-new-array {v7, v2}, [I

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x7

    filled-new-array {v8, v2}, [I

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/16 v2, 0x8

    const/4 v3, 0x7

    filled-new-array {v2, v3}, [I

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0x12

    filled-new-array {v7, v2}, [I

    move-result-object v2

    aput-object v2, v1, v8

    const/16 v2, 0x12

    filled-new-array {v8, v2}, [I

    move-result-object v2

    aput-object v2, v1, v9

    const/16 v2, 0x8

    const/16 v3, 0x12

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-array v2, v6, [I

    const/4 v3, 0x6

    aput v3, v2, v5

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/16 v2, 0x25

    const/16 v3, 0x16

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    new-array v1, v9, [[I

    new-array v2, v6, [I

    aput v7, v2, v5

    aput-object v2, v1, v5

    new-array v2, v6, [I

    aput v8, v2, v5

    aput-object v2, v1, v6

    new-array v2, v6, [I

    const/16 v3, 0x8

    aput v3, v2, v5

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/16 v2, 0x28

    const/4 v3, 0x7

    filled-new-array {v2, v3}, [I

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0x28

    const/16 v3, 0x12

    filled-new-array {v2, v3}, [I

    move-result-object v2

    aput-object v2, v1, v8

    aput-object v1, v0, v6

    sput-object v0, Landroid/icu/util/ChineseCalendar;->CHINESE_DATE_PRECEDENCE:[[[I

    new-instance v0, Landroid/icu/util/SimpleTimeZone;

    const-string/jumbo v1, "CHINA_ZONE"

    const v2, 0x1b77400

    invoke-direct {v0, v2, v1}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v0

    sput-object v0, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    sget-object v2, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    const/16 v3, -0xa4c

    invoke-direct {p0, v0, v1, v3, v2}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v7}, Landroid/icu/util/ChineseCalendar;-><init>(IIIIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 9

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/icu/util/ChineseCalendar;-><init>(IIIIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 4

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    sget-object v2, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    const/16 v3, -0xa4c

    invoke-direct {p0, v0, v1, v3, v2}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0x16

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p4}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p5}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p6}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p7}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    sget-object v2, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    const/16 v3, -0xa4c

    invoke-direct {p0, v0, v1, v3, v2}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, v4}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {p0, v4, p1}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0x16

    invoke-virtual {p0, v0, p4}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p5}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p6}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p7}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p8}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 3

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    const/16 v2, -0xa4c

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 2

    sget-object v0, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    const/16 v1, -0xa4c

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    new-instance v0, Landroid/icu/impl/CalendarAstronomer;

    invoke-direct {v0}, Landroid/icu/impl/CalendarAstronomer;-><init>()V

    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    new-instance v0, Landroid/icu/impl/CalendarCache;

    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->winterSolsticeCache:Landroid/icu/impl/CalendarCache;

    new-instance v0, Landroid/icu/impl/CalendarCache;

    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->newYearCache:Landroid/icu/impl/CalendarCache;

    iput p3, p0, Landroid/icu/util/ChineseCalendar;->epochYear:I

    iput-object p4, p0, Landroid/icu/util/ChineseCalendar;->zoneAstro:Landroid/icu/util/TimeZone;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 3

    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    const/16 v2, -0xa4c

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 3

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    const/16 v2, -0xa4c

    invoke-direct {p0, v0, p1, v2, v1}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 4

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    sget-object v2, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    const/16 v3, -0xa4c

    invoke-direct {p0, v0, v1, v3, v2}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 4

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    sget-object v2, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    const/16 v3, -0xa4c

    invoke-direct {p0, v0, v1, v3, v2}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    return-void
.end method

.method private computeChineseFields(IIIZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v11

    move/from16 v0, p1

    if-ge v0, v11, :cond_6

    add-int/lit8 v15, p2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v12

    :goto_0
    add-int/lit8 v15, v12, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v6

    add-int/lit8 v15, v11, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v8

    add-int/lit8 v15, p1, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8}, Landroid/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    move-result v15

    const/16 v16, 0xc

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/icu/util/ChineseCalendar;->isLeapYear:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Landroid/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    move-result v9

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/icu/util/ChineseCalendar;->isLeapYear:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Landroid/icu/util/ChineseCalendar;->isLeapMonthBetween(II)Z

    move-result v15

    if-eqz v15, :cond_0

    add-int/lit8 v9, v9, -0x1

    :cond_0
    const/4 v15, 0x1

    if-ge v9, v15, :cond_1

    add-int/lit8 v9, v9, 0xc

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/icu/util/ChineseCalendar;->isLeapYear:Z

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    move-result v15

    if-eqz v15, :cond_9

    add-int/lit8 v15, v13, -0x19

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Landroid/icu/util/ChineseCalendar;->isLeapMonthBetween(II)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v15, v9, -0x1

    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/icu/util/Calendar;->internalSet(II)V

    if-eqz v7, :cond_a

    const/4 v15, 0x1

    :goto_3
    const/16 v16, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/icu/util/Calendar;->internalSet(II)V

    if-eqz p4, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/util/ChineseCalendar;->epochYear:I

    sub-int v5, p2, v15

    move/from16 v0, p2

    add-int/lit16 v3, v0, 0xa4c

    const/16 v15, 0xb

    if-lt v9, v15, :cond_2

    const/4 v15, 0x6

    move/from16 v0, p3

    if-lt v0, v15, :cond_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    :cond_3
    sub-int v15, p1, v13

    add-int/lit8 v4, v15, 0x1

    const/16 v15, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v5}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/4 v15, 0x1

    new-array v14, v15, [I

    add-int/lit8 v15, v3, -0x1

    const/16 v16, 0x3c

    move/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/icu/util/ChineseCalendar;->floorDivide(II[I)I

    move-result v2

    add-int/lit8 v15, v2, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/4 v15, 0x0

    aget v15, v14, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/4 v15, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Landroid/icu/util/Calendar;->internalSet(II)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/icu/util/ChineseCalendar;->newYear(I)I

    move-result v10

    move/from16 v0, p1

    if-ge v0, v10, :cond_4

    add-int/lit8 v15, p2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/icu/util/ChineseCalendar;->newYear(I)I

    move-result v10

    :cond_4
    sub-int v15, p1, v10

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/icu/util/Calendar;->internalSet(II)V

    :cond_5
    return-void

    :cond_6
    move v12, v11

    add-int/lit8 v15, p2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v11

    goto/16 :goto_0

    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_3
.end method

.method private final daysToMillis(I)J
    .locals 6

    int-to-long v2, p1

    const-wide/32 v4, 0x5265c00

    mul-long v0, v2, v4

    iget-object v2, p0, Landroid/icu/util/ChineseCalendar;->zoneAstro:Landroid/icu/util/TimeZone;

    invoke-virtual {v2, v0, v1}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    sub-long v2, v0, v2

    return-wide v2
.end method

.method private hasNoMajorSolarTerm(I)Z
    .locals 5

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Landroid/icu/util/ChineseCalendar;->majorSolarTerm(I)I

    move-result v0

    add-int/lit8 v4, p1, 0x19

    invoke-direct {p0, v4, v3}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/icu/util/ChineseCalendar;->majorSolarTerm(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isLeapMonthBetween(II)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isLeapMonthBetween("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): Invalid parameters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lt p2, p1, :cond_1

    add-int/lit8 v1, p2, -0x19

    invoke-direct {p0, v1, v0}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/ChineseCalendar;->isLeapMonthBetween(II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Landroid/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private majorSolarTerm(I)I
    .locals 6

    iget-object v1, p0, Landroid/icu/util/ChineseCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    invoke-direct {p0, p1}, Landroid/icu/util/ChineseCalendar;->daysToMillis(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    iget-object v1, p0, Landroid/icu/util/ChineseCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    invoke-virtual {v1}, Landroid/icu/impl/CalendarAstronomer;->getSunLongitude()D

    move-result-wide v2

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/lit8 v1, v1, 0x2

    rem-int/lit8 v0, v1, 0xc

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0xc

    :cond_0
    return v0
.end method

.method private final millisToDays(J)I
    .locals 5

    iget-object v0, p0, Landroid/icu/util/ChineseCalendar;->zoneAstro:Landroid/icu/util/TimeZone;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    const-wide/32 v2, 0x5265c00

    invoke-static {v0, v1, v2, v3}, Landroid/icu/util/ChineseCalendar;->floorDivide(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private newMoonNear(IZ)I
    .locals 6

    iget-object v2, p0, Landroid/icu/util/ChineseCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    invoke-direct {p0, p1}, Landroid/icu/util/ChineseCalendar;->daysToMillis(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    iget-object v2, p0, Landroid/icu/util/ChineseCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    sget-object v3, Landroid/icu/impl/CalendarAstronomer;->NEW_MOON:Landroid/icu/impl/CalendarAstronomer$MoonAge;

    invoke-virtual {v2, v3, p2}, Landroid/icu/impl/CalendarAstronomer;->getMoonTime(Landroid/icu/impl/CalendarAstronomer$MoonAge;Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/icu/util/ChineseCalendar;->millisToDays(J)I

    move-result v2

    return v2
.end method

.method private newYear(I)I
    .locals 11

    const/4 v10, 0x1

    iget-object v7, p0, Landroid/icu/util/ChineseCalendar;->newYearCache:Landroid/icu/impl/CalendarCache;

    int-to-long v8, p1

    invoke-virtual {v7, v8, v9}, Landroid/icu/impl/CalendarCache;->get(J)J

    move-result-wide v0

    sget-wide v8, Landroid/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v7, v0, v8

    if-nez v7, :cond_1

    add-int/lit8 v7, p1, -0x1

    invoke-direct {p0, v7}, Landroid/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v6

    invoke-direct {p0, p1}, Landroid/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v5

    add-int/lit8 v7, v6, 0x1

    invoke-direct {p0, v7, v10}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v2

    add-int/lit8 v7, v2, 0x19

    invoke-direct {p0, v7, v10}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v4

    add-int/lit8 v7, v5, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_2

    invoke-direct {p0, v2}, Landroid/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {p0, v4}, Landroid/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    add-int/lit8 v7, v4, 0x19

    invoke-direct {p0, v7, v10}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v7

    int-to-long v0, v7

    :goto_0
    iget-object v7, p0, Landroid/icu/util/ChineseCalendar;->newYearCache:Landroid/icu/impl/CalendarCache;

    int-to-long v8, p1

    invoke-virtual {v7, v8, v9, v0, v1}, Landroid/icu/impl/CalendarCache;->put(JJ)V

    :cond_1
    long-to-int v7, v0

    return v7

    :cond_2
    int-to-long v0, v4

    goto :goto_0
.end method

.method private offsetMonth(III)V
    .locals 7

    const/16 v6, 0x14

    int-to-double v2, p3

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    const-wide v4, 0x403d87d4abcb41d5L    # 29.530588853

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr p1, v1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result p1

    const v1, 0x253d8c    # 3.419992E-39f

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    add-int v0, v1, p2

    const/16 v1, 0x1d

    if-le p2, v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v6, v1}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->complete()V

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v1

    if-lt v1, p2, :cond_0

    invoke-virtual {p0, v6, v0}, Landroid/icu/util/Calendar;->set(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v6, v0}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/16 v0, -0xa4c

    iput v0, p0, Landroid/icu/util/ChineseCalendar;->epochYear:I

    sget-object v0, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->zoneAstro:Landroid/icu/util/TimeZone;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Landroid/icu/impl/CalendarAstronomer;

    invoke-direct {v0}, Landroid/icu/impl/CalendarAstronomer;-><init>()V

    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    new-instance v0, Landroid/icu/impl/CalendarCache;

    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->winterSolsticeCache:Landroid/icu/impl/CalendarCache;

    new-instance v0, Landroid/icu/impl/CalendarCache;

    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->newYearCache:Landroid/icu/impl/CalendarCache;

    return-void
.end method

.method private synodicMonthsBetween(II)I
    .locals 4

    sub-int v0, p2, p1

    int-to-double v0, v0

    const-wide v2, 0x403d87d4abcb41d5L    # 29.530588853

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private winterSolstice(I)I
    .locals 10

    iget-object v6, p0, Landroid/icu/util/ChineseCalendar;->winterSolsticeCache:Landroid/icu/impl/CalendarCache;

    int-to-long v8, p1

    invoke-virtual {v6, v8, v9}, Landroid/icu/impl/CalendarCache;->get(J)J

    move-result-wide v0

    sget-wide v6, Landroid/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    const/16 v6, 0xb

    invoke-virtual {p0, p1, v6}, Landroid/icu/util/Calendar;->computeGregorianMonthStart(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const v7, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v6, v7

    invoke-direct {p0, v6}, Landroid/icu/util/ChineseCalendar;->daysToMillis(I)J

    move-result-wide v2

    iget-object v6, p0, Landroid/icu/util/ChineseCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    invoke-virtual {v6, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    iget-object v6, p0, Landroid/icu/util/ChineseCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    sget-object v7, Landroid/icu/impl/CalendarAstronomer;->WINTER_SOLSTICE:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/icu/impl/CalendarAstronomer;->getSunTime(Landroid/icu/impl/CalendarAstronomer$SolarLongitude;Z)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Landroid/icu/util/ChineseCalendar;->millisToDays(J)I

    move-result v6

    int-to-long v0, v6

    iget-object v6, p0, Landroid/icu/util/ChineseCalendar;->winterSolsticeCache:Landroid/icu/impl/CalendarCache;

    int-to-long v8, p1

    invoke-virtual {v6, v8, v9, v0, v1}, Landroid/icu/impl/CalendarCache;->put(JJ)V

    :cond_0
    long-to-int v6, v0

    return v6
.end method


# virtual methods
.method public add(II)V
    .locals 5

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/icu/util/Calendar;->add(II)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    const v4, 0x253d8c    # 3.419992E-39f

    sub-int v0, v3, v4

    sub-int v3, v0, v1

    add-int/lit8 v2, v3, 0x1

    invoke-direct {p0, v2, v1, p2}, Landroid/icu/util/ChineseCalendar;->offsetMonth(III)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected getFieldResolutionTable()[[[I
    .locals 1

    sget-object v0, Landroid/icu/util/ChineseCalendar;->CHINESE_DATE_PRECEDENCE:[[[I

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "chinese"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 4

    const v0, 0x253d8c    # 3.419992E-39f

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianYear()I

    move-result v1

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianMonth()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/icu/util/ChineseCalendar;->computeChineseFields(IIIZ)V

    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 11

    if-ltz p2, :cond_0

    const/16 v8, 0xb

    if-le p2, v8, :cond_1

    :cond_0
    const/4 v8, 0x1

    new-array v5, v8, [I

    const/16 v8, 0xc

    invoke-static {p2, v8, v5}, Landroid/icu/util/ChineseCalendar;->floorDivide(II[I)I

    move-result v8

    add-int/2addr p1, v8

    const/4 v8, 0x0

    aget p2, v5, v8

    :cond_1
    iget v8, p0, Landroid/icu/util/ChineseCalendar;->epochYear:I

    add-int/2addr v8, p1

    add-int/lit8 v0, v8, -0x1

    invoke-direct {p0, v0}, Landroid/icu/util/ChineseCalendar;->newYear(I)I

    move-result v4

    mul-int/lit8 v8, p2, 0x1d

    add-int/2addr v8, v4

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v3

    const v8, 0x253d8c    # 3.419992E-39f

    add-int v2, v3, v8

    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v7

    const/16 v8, 0x16

    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v6

    if-eqz p3, :cond_4

    move v1, v6

    :goto_0
    invoke-virtual {p0, v2}, Landroid/icu/util/Calendar;->computeGregorianFields(I)V

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianYear()I

    move-result v8

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianMonth()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct {p0, v3, v8, v9, v10}, Landroid/icu/util/ChineseCalendar;->computeChineseFields(IIIZ)V

    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v8

    if-ne p2, v8, :cond_2

    const/16 v8, 0x16

    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v8

    if-eq v1, v8, :cond_3

    :cond_2
    add-int/lit8 v8, v3, 0x19

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v3

    const v8, 0x253d8c    # 3.419992E-39f

    add-int v2, v3, v8

    :cond_3
    const/4 v8, 0x2

    invoke-virtual {p0, v8, v7}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/16 v8, 0x16

    invoke-virtual {p0, v8, v6}, Landroid/icu/util/Calendar;->internalSet(II)V

    add-int/lit8 v8, v2, -0x1

    return v8

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected handleGetExtendedYear()I
    .locals 7

    const/16 v6, 0x13

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v5, v4, v5}, Landroid/icu/util/Calendar;->newestStamp(III)I

    move-result v2

    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->getStamp(I)I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-virtual {p0, v6, v4}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v5, v4}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    mul-int/lit8 v2, v0, 0x3c

    invoke-virtual {p0, v4, v4}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Landroid/icu/util/ChineseCalendar;->epochYear:I

    add-int/lit16 v3, v3, 0xa4c

    sub-int v1, v2, v3

    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 1

    sget-object v0, Landroid/icu/util/ChineseCalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected handleGetMonthLength(II)I
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0, p1, p2, v4}, Landroid/icu/util/ChineseCalendar;->handleComputeMonthStart(IIZ)I

    move-result v2

    const v3, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v1, 0x19

    invoke-direct {p0, v2, v4}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v0

    sub-int v2, v0, v1

    return v2
.end method

.method public haveDefaultCentury()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public roll(II)V
    .locals 13

    const/4 v12, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/icu/util/Calendar;->roll(II)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    const/16 v7, 0x14

    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    const v8, 0x253d8c    # 3.419992E-39f

    sub-int v0, v7, v8

    sub-int v7, v0, v1

    add-int/lit8 v3, v7, 0x1

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    iget-boolean v7, p0, Landroid/icu/util/ChineseCalendar;->isLeapYear:Z

    if-eqz v7, :cond_1

    const/16 v7, 0x16

    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    if-ne v7, v12, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    iget-boolean v7, p0, Landroid/icu/util/ChineseCalendar;->isLeapYear:Z

    if-eqz v7, :cond_4

    const/16 v5, 0xd

    :goto_2
    add-int v7, v2, p2

    rem-int v6, v7, v5

    if-gez v6, :cond_2

    add-int/2addr v6, v5

    :cond_2
    if-eq v6, v2, :cond_0

    sub-int v7, v6, v2

    invoke-direct {p0, v3, v1, v7}, Landroid/icu/util/ChineseCalendar;->offsetMonth(III)V

    goto :goto_0

    :cond_3
    int-to-double v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v8, v10

    const-wide v10, 0x403d87d4abcb41d5L    # 29.530588853

    mul-double/2addr v8, v10

    double-to-int v7, v8

    sub-int v4, v3, v7

    invoke-direct {p0, v4, v12}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v4

    invoke-direct {p0, v4, v3}, Landroid/icu/util/ChineseCalendar;->isLeapMonthBetween(II)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/16 v5, 0xc

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
