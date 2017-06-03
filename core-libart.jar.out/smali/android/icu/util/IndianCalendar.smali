.class public Landroid/icu/util/IndianCalendar;
.super Landroid/icu/util/Calendar;
.source "IndianCalendar.java"


# static fields
.field public static final AGRAHAYANA:I = 0x8

.field public static final ASADHA:I = 0x3

.field public static final ASVINA:I = 0x6

.field public static final BHADRA:I = 0x5

.field public static final CHAITRA:I = 0x0

.field public static final IE:I = 0x0

.field private static final INDIAN_ERA_START:I = 0x4e

.field private static final INDIAN_YEAR_START:I = 0x50

.field public static final JYAISTHA:I = 0x2

.field public static final KARTIKA:I = 0x7

.field private static final LIMITS:[[I

.field public static final MAGHA:I = 0xa

.field public static final PAUSA:I = 0x9

.field public static final PHALGUNA:I = 0xb

.field public static final SRAVANA:I = 0x4

.field public static final VAISAKHA:I = 0x1

.field private static final serialVersionUID:J = 0x3235383330303532L


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const v6, 0x4c4b40

    const v5, -0x4c4b40

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x16

    new-array v0, v0, [[I

    filled-new-array {v3, v3, v3, v3}, [I

    move-result-object v1

    aput-object v1, v0, v3

    filled-new-array {v5, v5, v6, v6}, [I

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0xb

    const/16 v2, 0xb

    filled-new-array {v3, v3, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x34

    const/16 v2, 0x35

    filled-new-array {v4, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x1e

    const/16 v2, 0x1f

    filled-new-array {v4, v4, v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v7

    const/16 v1, 0x16d

    const/16 v2, 0x16e

    filled-new-array {v4, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/4 v1, -0x1

    const/4 v2, -0x1

    filled-new-array {v1, v2, v7, v7}, [I

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x10

    aput-object v1, v0, v2

    filled-new-array {v5, v5, v6, v6}, [I

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x12

    aput-object v1, v0, v2

    filled-new-array {v5, v5, v6, v6}, [I

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/IndianCalendar;->LIMITS:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

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

    invoke-direct {p0, p1, v0}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

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

    invoke-direct {p0, v0, p1}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

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

    invoke-direct {p0, v0, p1}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method private static IndianToJD(III)D
    .locals 10

    const/4 v8, 0x3

    add-int/lit8 v0, p0, 0x4e

    invoke-static {v0}, Landroid/icu/util/IndianCalendar;->isGregorianLeap(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v1, 0x1f

    const/16 v5, 0x15

    invoke-static {v0, v8, v5}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    move-result-wide v6

    :goto_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    add-int/lit8 v5, p2, -0x1

    int-to-double v8, v5

    add-double v2, v6, v8

    :goto_1
    return-wide v2

    :cond_0
    const/16 v1, 0x1e

    const/16 v5, 0x16

    invoke-static {v0, v8, v5}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    move-result-wide v6

    goto :goto_0

    :cond_1
    int-to-double v8, v1

    add-double v2, v6, v8

    add-int/lit8 v4, p1, -0x2

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v5, v4, 0x1f

    int-to-double v8, v5

    add-double/2addr v2, v8

    const/16 v5, 0x8

    if-lt p1, v5, :cond_2

    add-int/lit8 v4, p1, -0x7

    mul-int/lit8 v5, v4, 0x1e

    int-to-double v8, v5

    add-double/2addr v2, v8

    :cond_2
    add-int/lit8 v5, p2, -0x1

    int-to-double v8, v5

    add-double/2addr v2, v8

    goto :goto_1
.end method

.method private static gregorianToJD(III)D
    .locals 6

    add-int/lit8 v1, p0, -0x1

    mul-int/lit16 v2, v1, 0x16d

    div-int/lit8 v3, v1, 0x4

    add-int/2addr v2, v3

    div-int/lit8 v3, v1, 0x64

    sub-int/2addr v2, v3

    div-int/lit16 v3, v1, 0x190

    add-int/2addr v2, v3

    mul-int/lit16 v3, p1, 0x16f

    add-int/lit16 v3, v3, -0x16a

    div-int/lit8 v3, v3, 0xc

    add-int/2addr v3, v2

    const/4 v2, 0x2

    if-gt p1, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/2addr v2, v3

    add-int v0, v2, p2

    add-int/lit8 v2, v0, -0x1

    int-to-double v2, v2

    const-wide v4, 0x413a445180000000L    # 1721425.5

    add-double/2addr v2, v4

    return-wide v2

    :cond_0
    invoke-static {p0}, Landroid/icu/util/IndianCalendar;->isGregorianLeap(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x2

    goto :goto_0
.end method

.method private static isGregorianLeap(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    rem-int/lit8 v2, p0, 0x4

    if-nez v2, :cond_2

    rem-int/lit8 v2, p0, 0x64

    if-nez v2, :cond_0

    rem-int/lit16 v2, p0, 0x190

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static jdToGregorian(D)[I
    .locals 34

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    sub-double v30, p0, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    move-result-wide v30

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    add-double v24, v30, v32

    const-wide v30, 0x413a445180000000L    # 1721425.5

    sub-double v10, v24, v30

    const-wide v30, 0x4101d58800000000L    # 146097.0

    div-double v30, v10, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    const-wide v30, 0x4101d58800000000L    # 146097.0

    rem-double v12, v10, v30

    const-wide v30, 0x40e1d58000000000L    # 36524.0

    div-double v30, v12, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide v30, 0x40e1d58000000000L    # 36524.0

    rem-double v8, v12, v30

    const-wide v30, 0x4096d40000000000L    # 1461.0

    div-double v30, v8, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    const-wide v30, 0x4096d40000000000L    # 1461.0

    rem-double v14, v8, v30

    const-wide v30, 0x4076d00000000000L    # 365.0

    div-double v30, v14, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    const-wide/high16 v30, 0x4079000000000000L    # 400.0

    mul-double v30, v30, v22

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    mul-double v32, v32, v4

    add-double v30, v30, v32

    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    mul-double v32, v32, v20

    add-double v30, v30, v32

    add-double v30, v30, v28

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v19, v0

    const-wide/high16 v30, 0x4010000000000000L    # 4.0

    cmpl-double v30, v4, v30

    if-eqz v30, :cond_0

    const-wide/high16 v30, 0x4010000000000000L    # 4.0

    cmpl-double v30, v28, v30

    if-nez v30, :cond_2

    :cond_0
    const/16 v30, 0x1

    :goto_0
    if-nez v30, :cond_1

    add-int/lit8 v19, v19, 0x1

    :cond_1
    const/16 v30, 0x1

    const/16 v31, 0x1

    move/from16 v0, v19

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    move-result-wide v30

    sub-double v26, v24, v30

    const/16 v30, 0x3

    const/16 v31, 0x1

    move/from16 v0, v19

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    move-result-wide v30

    cmpg-double v30, v24, v30

    if-gez v30, :cond_3

    const/16 v30, 0x0

    :goto_1
    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v30, v26, v16

    const-wide/high16 v32, 0x4028000000000000L    # 12.0

    mul-double v30, v30, v32

    const-wide v32, 0x4077500000000000L    # 373.0

    add-double v30, v30, v32

    const-wide v32, 0x4076f00000000000L    # 367.0

    div-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v18, v0

    const/16 v30, 0x1

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    move-result-wide v30

    sub-double v30, v24, v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    add-int/lit8 v6, v30, 0x1

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v7, v0, [I

    const/16 v30, 0x0

    aput v19, v7, v30

    const/16 v30, 0x1

    aput v18, v7, v30

    const/16 v30, 0x2

    aput v6, v7, v30

    return-object v7

    :cond_2
    const/16 v30, 0x0

    goto :goto_0

    :cond_3
    invoke-static/range {v19 .. v19}, Landroid/icu/util/IndianCalendar;->isGregorianLeap(I)Z

    move-result v30

    if-eqz v30, :cond_4

    const/16 v30, 0x1

    goto :goto_1

    :cond_4
    const/16 v30, 0x2

    goto :goto_1
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "indian"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    int-to-double v10, p1

    invoke-static {v10, v11}, Landroid/icu/util/IndianCalendar;->jdToGregorian(D)[I

    move-result-object v3

    aget v9, v3, v12

    add-int/lit8 v2, v9, -0x4e

    aget v9, v3, v12

    invoke-static {v9, v13, v13}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    move-result-wide v4

    int-to-double v10, p1

    sub-double/2addr v10, v4

    double-to-int v8, v10

    const/16 v9, 0x50

    if-ge v8, v9, :cond_1

    add-int/lit8 v2, v2, -0x1

    aget v9, v3, v12

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Landroid/icu/util/IndianCalendar;->isGregorianLeap(I)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v6, 0x1f

    :goto_0
    add-int/lit16 v9, v6, 0x9b

    add-int/lit8 v9, v9, 0x5a

    add-int/lit8 v9, v9, 0xa

    add-int/2addr v8, v9

    :goto_1
    if-ge v8, v6, :cond_3

    const/4 v1, 0x0

    add-int/lit8 v0, v8, 0x1

    :goto_2
    invoke-virtual {p0, v12, v12}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/16 v9, 0x13

    invoke-virtual {p0, v9, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    invoke-virtual {p0, v13, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/4 v9, 0x2

    invoke-virtual {p0, v9, v1}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/4 v9, 0x5

    invoke-virtual {p0, v9, v0}, Landroid/icu/util/Calendar;->internalSet(II)V

    add-int/lit8 v9, v8, 0x1

    const/4 v10, 0x6

    invoke-virtual {p0, v10, v9}, Landroid/icu/util/Calendar;->internalSet(II)V

    return-void

    :cond_0
    const/16 v6, 0x1e

    goto :goto_0

    :cond_1
    aget v9, v3, v12

    invoke-static {v9}, Landroid/icu/util/IndianCalendar;->isGregorianLeap(I)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v6, 0x1f

    :goto_3
    add-int/lit8 v8, v8, -0x50

    goto :goto_1

    :cond_2
    const/16 v6, 0x1e

    goto :goto_3

    :cond_3
    sub-int v7, v8, v6

    const/16 v9, 0x9b

    if-ge v7, v9, :cond_4

    div-int/lit8 v9, v7, 0x1f

    add-int/lit8 v1, v9, 0x1

    rem-int/lit8 v9, v7, 0x1f

    add-int/lit8 v0, v9, 0x1

    goto :goto_2

    :cond_4
    add-int/lit16 v7, v7, -0x9b

    div-int/lit8 v9, v7, 0x1e

    add-int/lit8 v1, v9, 0x6

    rem-int/lit8 v9, v7, 0x1e

    add-int/lit8 v0, v9, 0x1

    goto :goto_2
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 4

    if-ltz p2, :cond_0

    const/16 v1, 0xb

    if-le p2, v1, :cond_1

    :cond_0
    div-int/lit8 v1, p2, 0xc

    add-int/2addr p1, v1

    rem-int/lit8 p2, p2, 0xc

    :cond_1
    const/16 v1, 0xc

    if-ne p2, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/icu/util/IndianCalendar;->IndianToJD(III)D

    move-result-wide v2

    double-to-int v1, v2

    return v1

    :cond_2
    add-int/lit8 v0, p2, 0x1

    goto :goto_0
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

    sget-object v0, Landroid/icu/util/IndianCalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected handleGetMonthLength(II)I
    .locals 5

    const/16 v4, 0x1f

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ltz p2, :cond_0

    const/16 v1, 0xb

    if-le p2, v1, :cond_1

    :cond_0
    new-array v0, v3, [I

    const/16 v1, 0xc

    invoke-static {p2, v1, v0}, Landroid/icu/util/IndianCalendar;->floorDivide(II[I)I

    move-result v1

    add-int/2addr p1, v1

    aget p2, v0, v2

    :cond_1
    add-int/lit8 v1, p1, 0x4e

    invoke-static {v1}, Landroid/icu/util/IndianCalendar;->isGregorianLeap(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    return v4

    :cond_2
    if-lt p2, v3, :cond_3

    const/4 v1, 0x5

    if-gt p2, v1, :cond_3

    return v4

    :cond_3
    const/16 v1, 0x1e

    return v1
.end method

.method protected handleGetYearLength(I)I
    .locals 1

    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v0

    return v0
.end method
