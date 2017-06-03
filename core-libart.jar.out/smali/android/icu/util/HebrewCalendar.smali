.class public Landroid/icu/util/HebrewCalendar;
.super Landroid/icu/util/Calendar;
.source "HebrewCalendar.java"


# static fields
.field public static final ADAR:I = 0x6

.field public static final ADAR_1:I = 0x5

.field public static final AV:I = 0xb

.field private static final BAHARAD:J = 0x2f34L

.field private static final DAY_PARTS:J = 0x6540L

.field public static final ELUL:I = 0xc

.field public static final HESHVAN:I = 0x1

.field private static final HOUR_PARTS:J = 0x438L

.field public static final IYAR:I = 0x8

.field public static final KISLEV:I = 0x2

.field private static final LEAP_MONTH_START:[[I

.field private static final LIMITS:[[I

.field private static final MONTH_DAYS:I = 0x1d

.field private static final MONTH_FRACT:J = 0x35b9L

.field private static final MONTH_LENGTH:[[I

.field private static final MONTH_PARTS:J = 0xbadf9L

.field private static final MONTH_START:[[I

.field public static final NISAN:I = 0x7

.field public static final SHEVAT:I = 0x4

.field public static final SIVAN:I = 0x9

.field public static final TAMUZ:I = 0xa

.field public static final TEVET:I = 0x3

.field public static final TISHRI:I = 0x0

.field private static cache:Landroid/icu/impl/CalendarCache; = null

.field private static final serialVersionUID:J = -0x1b18c2be311f64d8L


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const v9, -0x4c4b40

    const/4 v8, 0x1

    const/16 v7, 0x1d

    const/16 v6, 0x1e

    const/4 v5, 0x0

    const/16 v0, 0x16

    new-array v0, v0, [[I

    filled-new-array {v5, v5, v5, v5}, [I

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x4c4b40

    const v2, 0x4c4b40

    filled-new-array {v9, v9, v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v8

    const/16 v1, 0xc

    const/16 v2, 0xc

    filled-new-array {v5, v5, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x33

    const/16 v2, 0x38

    filled-new-array {v8, v8, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/4 v2, 0x4

    aput-object v1, v0, v2

    filled-new-array {v8, v8, v7, v6}, [I

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x161

    const/16 v2, 0x181

    filled-new-array {v8, v8, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x5

    filled-new-array {v1, v2, v3, v4}, [I

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

    const v1, 0x4c4b40

    const v2, 0x4c4b40

    filled-new-array {v9, v9, v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const v1, 0x4c4b40

    const v2, 0x4c4b40

    filled-new-array {v9, v9, v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/HebrewCalendar;->LIMITS:[[I

    const/16 v0, 0xd

    new-array v0, v0, [[I

    filled-new-array {v6, v6, v6}, [I

    move-result-object v1

    aput-object v1, v0, v5

    filled-new-array {v7, v7, v6}, [I

    move-result-object v1

    aput-object v1, v0, v8

    filled-new-array {v7, v6, v6}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    filled-new-array {v7, v7, v7}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    filled-new-array {v6, v6, v6}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    filled-new-array {v6, v6, v6}, [I

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    filled-new-array {v7, v7, v7}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    filled-new-array {v6, v6, v6}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    filled-new-array {v7, v7, v7}, [I

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    filled-new-array {v6, v6, v6}, [I

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    filled-new-array {v7, v7, v7}, [I

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    filled-new-array {v6, v6, v6}, [I

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    filled-new-array {v7, v7, v7}, [I

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/HebrewCalendar;->MONTH_LENGTH:[[I

    const/16 v0, 0xe

    new-array v0, v0, [[I

    filled-new-array {v5, v5, v5}, [I

    move-result-object v1

    aput-object v1, v0, v5

    filled-new-array {v6, v6, v6}, [I

    move-result-object v1

    aput-object v1, v0, v8

    const/16 v1, 0x3b

    const/16 v2, 0x3b

    const/16 v3, 0x3c

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x58

    const/16 v2, 0x59

    const/16 v3, 0x5a

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x75

    const/16 v2, 0x76

    const/16 v3, 0x77

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x93

    const/16 v2, 0x94

    const/16 v3, 0x95

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x93

    const/16 v2, 0x94

    const/16 v3, 0x95

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0xb0

    const/16 v2, 0xb1

    const/16 v3, 0xb2

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0xce

    const/16 v2, 0xcf

    const/16 v3, 0xd0

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0xeb

    const/16 v2, 0xec

    const/16 v3, 0xed

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0x109

    const/16 v2, 0x10a

    const/16 v3, 0x10b

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0x126

    const/16 v2, 0x127

    const/16 v3, 0x128

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v1, 0x144

    const/16 v2, 0x145

    const/16 v3, 0x146

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v1, 0x161

    const/16 v2, 0x162

    const/16 v3, 0x163

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/HebrewCalendar;->MONTH_START:[[I

    const/16 v0, 0xe

    new-array v0, v0, [[I

    filled-new-array {v5, v5, v5}, [I

    move-result-object v1

    aput-object v1, v0, v5

    filled-new-array {v6, v6, v6}, [I

    move-result-object v1

    aput-object v1, v0, v8

    const/16 v1, 0x3b

    const/16 v2, 0x3b

    const/16 v3, 0x3c

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x58

    const/16 v2, 0x59

    const/16 v3, 0x5a

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x75

    const/16 v2, 0x76

    const/16 v3, 0x77

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x93

    const/16 v2, 0x94

    const/16 v3, 0x95

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0xb1

    const/16 v2, 0xb2

    const/16 v3, 0xb3

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0xce

    const/16 v2, 0xcf

    const/16 v3, 0xd0

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0xec

    const/16 v2, 0xed

    const/16 v3, 0xee

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x109

    const/16 v2, 0x10a

    const/16 v3, 0x10b

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0x127

    const/16 v2, 0x128

    const/16 v3, 0x129

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0x144

    const/16 v2, 0x145

    const/16 v3, 0x146

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v1, 0x162

    const/16 v2, 0x163

    const/16 v3, 0x164

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v1, 0x17f

    const/16 v2, 0x180

    const/16 v3, 0x181

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/HebrewCalendar;->LEAP_MONTH_START:[[I

    new-instance v0, Landroid/icu/impl/CalendarCache;

    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    sput-object v0, Landroid/icu/util/HebrewCalendar;->cache:Landroid/icu/impl/CalendarCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/HebrewCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 2

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/HebrewCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/HebrewCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/HebrewCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public static isLeapYear(I)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    mul-int/lit8 v2, p0, 0xc

    add-int/lit8 v2, v2, 0x11

    rem-int/lit8 v0, v2, 0x13

    if-gez v0, :cond_1

    const/4 v2, -0x7

    :goto_0
    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/16 v2, 0xc

    goto :goto_0
.end method

.method private static monthsInYear(I)I
    .locals 1

    invoke-static {p0}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method

.method private static startOfYear(I)J
    .locals 10

    sget-object v6, Landroid/icu/util/HebrewCalendar;->cache:Landroid/icu/impl/CalendarCache;

    int-to-long v8, p0

    invoke-virtual {v6, v8, v9}, Landroid/icu/impl/CalendarCache;->get(J)J

    move-result-wide v0

    sget-wide v6, Landroid/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v6, v0, v6

    if-nez v6, :cond_4

    mul-int/lit16 v6, p0, 0xeb

    add-int/lit16 v6, v6, -0xea

    div-int/lit8 v4, v6, 0x13

    int-to-long v6, v4

    const-wide/16 v8, 0x35b9

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x2f34

    add-long v2, v6, v8

    mul-int/lit8 v6, v4, 0x1d

    int-to-long v6, v6

    const-wide/16 v8, 0x6540

    div-long v8, v2, v8

    add-long v0, v6, v8

    const-wide/16 v6, 0x6540

    rem-long/2addr v2, v6

    const-wide/16 v6, 0x7

    rem-long v6, v0, v6

    long-to-int v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    :cond_0
    :goto_0
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    const-wide/16 v6, 0x7

    rem-long v6, v0, v6

    long-to-int v5, v6

    :cond_1
    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const-wide/16 v6, 0x4014

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    invoke-static {p0}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_2
    if-nez v5, :cond_3

    const-wide/16 v6, 0x5ae5

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    add-int/lit8 v6, p0, -0x1

    invoke-static {v6}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    :cond_3
    :goto_1
    sget-object v6, Landroid/icu/util/HebrewCalendar;->cache:Landroid/icu/impl/CalendarCache;

    int-to-long v8, p0

    invoke-virtual {v6, v8, v9, v0, v1}, Landroid/icu/impl/CalendarCache;->put(JJ)V

    :cond_4
    return-wide v0

    :cond_5
    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_6
    const-wide/16 v6, 0x2

    add-long/2addr v0, v6

    goto :goto_1
.end method

.method private final yearType(I)I
    .locals 5

    invoke-virtual {p0, p1}, Landroid/icu/util/HebrewCalendar;->handleGetYearLength(I)I

    move-result v1

    const/16 v2, 0x17c

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v1, -0x1e

    :cond_0
    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal year length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in year "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x161
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public add(II)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x5

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/icu/util/Calendar;->add(II)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-lez p2, :cond_5

    if-ge v1, v4, :cond_2

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v1, p2

    :goto_2
    if-eqz v0, :cond_0

    if-lt v1, v4, :cond_0

    invoke-static {v2}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    :goto_3
    const/16 v3, 0xc

    if-gt v1, v3, :cond_4

    :cond_1
    invoke-virtual {p0, v6, v1}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {p0, v5, v2}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->pinField(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, -0xd

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    if-le v1, v4, :cond_7

    const/4 v0, 0x1

    :goto_4
    add-int/2addr v1, p2

    :goto_5
    if-eqz v0, :cond_6

    if-gt v1, v4, :cond_6

    invoke-static {v2}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    :goto_6
    if-gez v1, :cond_1

    add-int/lit8 v1, v1, 0xd

    add-int/lit8 v2, v2, -0x1

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "hebrew"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 18

    const v14, 0x54f5d

    sub-int v14, p1, v14

    int-to-long v2, v14

    const-wide/16 v14, 0x6540

    mul-long/2addr v14, v2

    const-wide/32 v16, 0xbadf9

    div-long v6, v14, v16

    const-wide/16 v14, 0x13

    mul-long/2addr v14, v6

    const-wide/16 v16, 0xea

    add-long v14, v14, v16

    const-wide/16 v16, 0xeb

    div-long v14, v14, v16

    long-to-int v14, v14

    add-int/lit8 v10, v14, 0x1

    invoke-static {v10}, Landroid/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v12

    sub-long v14, v2, v12

    long-to-int v5, v14

    :goto_0
    const/4 v14, 0x1

    if-ge v5, v14, :cond_0

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10}, Landroid/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v12

    sub-long v14, v2, v12

    long-to-int v5, v14

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/icu/util/HebrewCalendar;->yearType(I)I

    move-result v11

    invoke-static {v10}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v14

    if-eqz v14, :cond_1

    sget-object v9, Landroid/icu/util/HebrewCalendar;->LEAP_MONTH_START:[[I

    :goto_1
    const/4 v8, 0x0

    :goto_2
    aget-object v14, v9, v8

    aget v14, v14, v11

    if-le v5, v14, :cond_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    sget-object v9, Landroid/icu/util/HebrewCalendar;->MONTH_START:[[I

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, -0x1

    aget-object v14, v9, v8

    aget v14, v14, v11

    sub-int v4, v5, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/16 v14, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/4 v14, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Landroid/icu/util/Calendar;->internalSet(II)V

    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 6

    :goto_0
    if-gez p2, :cond_3

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Landroid/icu/util/HebrewCalendar;->monthsInYear(I)I

    move-result v3

    add-int/2addr p2, v3

    goto :goto_0

    :goto_1
    const/16 v3, 0xc

    if-le p2, v3, :cond_0

    add-int/lit8 p1, v2, 0x1

    invoke-static {v2}, Landroid/icu/util/HebrewCalendar;->monthsInYear(I)I

    move-result v3

    sub-int/2addr p2, v3

    move v2, p1

    goto :goto_1

    :cond_0
    invoke-static {v2}, Landroid/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v0

    if-eqz p2, :cond_1

    invoke-static {v2}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/icu/util/HebrewCalendar;->LEAP_MONTH_START:[[I

    aget-object v3, v3, p2

    invoke-direct {p0, v2}, Landroid/icu/util/HebrewCalendar;->yearType(I)I

    move-result v4

    aget v3, v3, v4

    int-to-long v4, v3

    add-long/2addr v0, v4

    :cond_1
    :goto_2
    const-wide/32 v4, 0x54f5d

    add-long/2addr v4, v0

    long-to-int v3, v4

    return v3

    :cond_2
    sget-object v3, Landroid/icu/util/HebrewCalendar;->MONTH_START:[[I

    aget-object v3, v3, p2

    invoke-direct {p0, v2}, Landroid/icu/util/HebrewCalendar;->yearType(I)I

    move-result v4

    aget v3, v3, v4

    int-to-long v4, v3

    add-long/2addr v0, v4

    goto :goto_2

    :cond_3
    move v2, p1

    goto :goto_1
.end method

.method protected handleGetExtendedYear()I
    .locals 4

    const/16 v3, 0x13

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Landroid/icu/util/Calendar;->newerField(II)I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v3, v2}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v2, v2}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v0

    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 1

    sget-object v0, Landroid/icu/util/HebrewCalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected handleGetMonthLength(II)I
    .locals 3

    const/4 v2, 0x0

    :goto_0
    if-gez p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Landroid/icu/util/HebrewCalendar;->monthsInYear(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :goto_1
    const/16 v1, 0xc

    if-le p2, v1, :cond_0

    add-int/lit8 p1, v0, 0x1

    invoke-static {v0}, Landroid/icu/util/HebrewCalendar;->monthsInYear(I)I

    move-result v1

    sub-int/2addr p2, v1

    move v0, p1

    goto :goto_1

    :cond_0
    packed-switch p2, :pswitch_data_0

    sget-object v1, Landroid/icu/util/HebrewCalendar;->MONTH_LENGTH:[[I

    aget-object v1, v1, p2

    aget v1, v1, v2

    return v1

    :pswitch_0
    sget-object v1, Landroid/icu/util/HebrewCalendar;->MONTH_LENGTH:[[I

    aget-object v1, v1, p2

    invoke-direct {p0, v0}, Landroid/icu/util/HebrewCalendar;->yearType(I)I

    move-result v2

    aget v1, v1, v2

    return v1

    :cond_1
    move v0, p1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected handleGetYearLength(I)I
    .locals 4

    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Landroid/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v0

    invoke-static {p1}, Landroid/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public roll(II)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x5

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/icu/util/Calendar;->roll(II)V

    return-void

    :pswitch_0
    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    invoke-static {v3}, Landroid/icu/util/HebrewCalendar;->monthsInYear(I)I

    move-result v4

    rem-int v5, p2, v4

    add-int v2, v1, v5

    if-nez v0, :cond_0

    if-lez p2, :cond_1

    if-ge v1, v6, :cond_1

    if-lt v2, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_0
    :goto_0
    add-int/lit8 v5, v2, 0xd

    rem-int/lit8 v5, v5, 0xd

    invoke-virtual {p0, v7, v5}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->pinField(I)V

    return-void

    :cond_1
    if-gez p2, :cond_0

    if-le v1, v6, :cond_0

    if-gt v2, v6, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected validateField(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/HebrewCalendar;->handleGetExtendedYear()I

    move-result v0

    invoke-static {v0}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->validateField(I)V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MONTH cannot be ADAR_1(5) except leap years"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
