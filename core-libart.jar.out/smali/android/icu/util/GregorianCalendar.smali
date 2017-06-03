.class public Landroid/icu/util/GregorianCalendar;
.super Landroid/icu/util/Calendar;
.source "GregorianCalendar.java"


# static fields
.field public static final AD:I = 0x1

.field public static final BC:I = 0x0

.field private static final EPOCH_YEAR:I = 0x7b2

.field private static final LIMITS:[[I

.field private static final MONTH_COUNT:[[I

.field private static final serialVersionUID:J = 0x7faacb46ed8a2479L


# instance fields
.field private transient cutoverJulianDay:I

.field private gregorianCutover:J

.field private transient gregorianCutoverYear:I

.field protected transient invertGregorian:Z

.field protected transient isGregorian:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0xb

    const/16 v6, 0x1e

    const/4 v4, 0x1

    const/16 v3, 0x1f

    const/4 v5, 0x0

    const/16 v0, 0xc

    new-array v0, v0, [[I

    filled-new-array {v3, v3, v5, v5}, [I

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x1c

    const/16 v2, 0x1d

    filled-new-array {v1, v2, v3, v3}, [I

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x3b

    const/16 v2, 0x3c

    filled-new-array {v3, v3, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x5a

    const/16 v2, 0x5b

    filled-new-array {v6, v6, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x78

    const/16 v2, 0x79

    filled-new-array {v3, v3, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x97

    const/16 v2, 0x98

    filled-new-array {v6, v6, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0xb5

    const/16 v2, 0xb6

    filled-new-array {v3, v3, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0xd4

    const/16 v2, 0xd5

    filled-new-array {v3, v3, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0xf3

    const/16 v2, 0xf4

    filled-new-array {v6, v6, v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x111

    const/16 v2, 0x112

    filled-new-array {v3, v3, v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0x130

    const/16 v2, 0x131

    filled-new-array {v6, v6, v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0x14e

    const/16 v2, 0x14f

    filled-new-array {v3, v3, v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Landroid/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    const/16 v0, 0x17

    new-array v0, v0, [[I

    filled-new-array {v5, v5, v4, v4}, [I

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x58f163

    const v2, 0x5915be

    filled-new-array {v4, v4, v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v4

    filled-new-array {v5, v5, v7, v7}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x34

    const/16 v2, 0x35

    filled-new-array {v4, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x1c

    filled-new-array {v4, v4, v1, v3}, [I

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x16d

    const/16 v2, 0x16e

    filled-new-array {v4, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x4

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

    aput-object v1, v0, v7

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

    const v1, -0x5915be

    const v2, -0x5915be

    const v3, 0x58f164

    const v4, 0x5915bf

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const v1, -0x5915bd

    const v2, -0x5915bd

    const v3, 0x58f163

    const v4, 0x5915be

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

    new-array v1, v5, [I

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/GregorianCalendar;->LIMITS:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    const v0, 0x231519

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    const/16 v0, 0x62e

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/icu/util/GregorianCalendar;->set(II)V

    invoke-virtual {p0, v2, p1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/GregorianCalendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/GregorianCalendar;->set(II)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    const v0, 0x231519

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    const/16 v0, 0x62e

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/icu/util/GregorianCalendar;->set(II)V

    invoke-virtual {p0, v2, p1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/GregorianCalendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/GregorianCalendar;->set(II)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Landroid/icu/util/GregorianCalendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Landroid/icu/util/GregorianCalendar;->set(II)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    const v0, 0x231519

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    const/16 v0, 0x62e

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/icu/util/GregorianCalendar;->set(II)V

    invoke-virtual {p0, v2, p1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/GregorianCalendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/GregorianCalendar;->set(II)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Landroid/icu/util/GregorianCalendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Landroid/icu/util/GregorianCalendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Landroid/icu/util/GregorianCalendar;->set(II)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    const v0, 0x231519

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    const/16 v0, 0x62e

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/GregorianCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    const v0, 0x231519

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    const/16 v0, 0x62e

    iput v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/GregorianCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public getActualMaximum(I)I
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v6

    return v6

    :pswitch_0
    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    invoke-virtual {v0, v8}, Landroid/icu/util/Calendar;->setLenient(Z)V

    invoke-virtual {v0, v9}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sget-object v6, Landroid/icu/util/GregorianCalendar;->LIMITS:[[I

    aget-object v6, v6, v8

    aget v4, v6, v8

    sget-object v6, Landroid/icu/util/GregorianCalendar;->LIMITS:[[I

    aget-object v6, v6, v8

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/lit8 v3, v6, 0x1

    :goto_0
    add-int/lit8 v6, v4, 0x1

    if-ge v6, v3, :cond_1

    add-int v6, v4, v3

    div-int/lit8 v5, v6, 0x2

    invoke-virtual {v0, v8, v5}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {v0, v8}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v5, :cond_0

    invoke-virtual {v0, v9}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v2, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v3, v5

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    :cond_1
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/util/GregorianCalendar;->getMinimum(I)I

    move-result v0

    return v0
.end method

.method public final getGregorianChange()Ljava/util/Date;
    .locals 4

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "gregorian"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 18

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    move/from16 v0, p1

    if-lt v0, v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/GregorianCalendar;->getGregorianMonth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/GregorianCalendar;->getGregorianDayOfMonth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/GregorianCalendar;->getGregorianDayOfYear()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/GregorianCalendar;->getGregorianYear()I

    move-result v6

    :goto_0
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    const/4 v14, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    const/16 v14, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    const/4 v5, 0x1

    const/4 v14, 0x1

    if-ge v6, v14, :cond_0

    const/4 v5, 0x0

    rsub-int/lit8 v6, v6, 0x1

    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    return-void

    :cond_1
    const v14, 0x1a4450

    sub-int v14, p1, v14

    int-to-long v10, v14

    const-wide/16 v14, 0x4

    mul-long/2addr v14, v10

    const-wide/16 v16, 0x5b8

    add-long v14, v14, v16

    const-wide/16 v16, 0x5b5

    invoke-static/range {v14 .. v17}, Landroid/icu/util/GregorianCalendar;->floorDivide(JJ)J

    move-result-wide v14

    long-to-int v6, v14

    add-int/lit8 v14, v6, -0x1

    mul-int/lit16 v14, v14, 0x16d

    add-int/lit8 v15, v6, -0x1

    const/16 v16, 0x4

    invoke-static/range {v15 .. v16}, Landroid/icu/util/GregorianCalendar;->floorDivide(II)I

    move-result v15

    add-int/2addr v14, v15

    int-to-long v8, v14

    sub-long v14, v10, v8

    long-to-int v4, v14

    and-int/lit8 v14, v6, 0x3

    if-nez v14, :cond_3

    const/4 v7, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz v7, :cond_4

    const/16 v12, 0x3c

    :goto_2
    if-lt v4, v12, :cond_2

    if-eqz v7, :cond_5

    const/4 v2, 0x1

    :cond_2
    :goto_3
    add-int v14, v4, v2

    mul-int/lit8 v14, v14, 0xc

    add-int/lit8 v14, v14, 0x6

    div-int/lit16 v13, v14, 0x16f

    sget-object v14, Landroid/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    aget-object v15, v14, v13

    if-eqz v7, :cond_6

    const/4 v14, 0x3

    :goto_4
    aget v14, v15, v14

    sub-int v14, v4, v14

    add-int/lit8 v3, v14, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    const/16 v12, 0x3b

    goto :goto_2

    :cond_5
    const/4 v2, 0x2

    goto :goto_3

    :cond_6
    const/4 v14, 0x2

    goto :goto_4
.end method

.method protected handleComputeJulianDay(I)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/util/GregorianCalendar;->invertGregorian:Z

    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->handleComputeJulianDay(I)I

    move-result v0

    iget-boolean v3, p0, Landroid/icu/util/GregorianCalendar;->isGregorian:Z

    iget v4, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    if-lt v0, v4, :cond_0

    move v1, v2

    :cond_0
    if-eq v3, v1, :cond_1

    iput-boolean v2, p0, Landroid/icu/util/GregorianCalendar;->invertGregorian:Z

    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->handleComputeJulianDay(I)I

    move-result v0

    :cond_1
    return v0
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ltz p2, :cond_0

    const/16 v4, 0xb

    if-le p2, v4, :cond_1

    :cond_0
    new-array v2, v5, [I

    const/16 v4, 0xc

    invoke-static {p2, v4, v2}, Landroid/icu/util/GregorianCalendar;->floorDivide(II[I)I

    move-result v4

    add-int/2addr p1, v4

    aget p2, v2, v6

    :cond_1
    rem-int/lit8 v4, p1, 0x4

    if-nez v4, :cond_6

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v3, p1, -0x1

    mul-int/lit16 v4, v3, 0x16d

    const/4 v7, 0x4

    invoke-static {v3, v7}, Landroid/icu/util/GregorianCalendar;->floorDivide(II)I

    move-result v7

    add-int/2addr v4, v7

    const v7, 0x1a444f

    add-int v1, v4, v7

    iget v4, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    if-lt p1, v4, :cond_7

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Landroid/icu/util/GregorianCalendar;->isGregorian:Z

    iget-boolean v4, p0, Landroid/icu/util/GregorianCalendar;->invertGregorian:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Landroid/icu/util/GregorianCalendar;->isGregorian:Z

    if-eqz v4, :cond_8

    :goto_2
    iput-boolean v6, p0, Landroid/icu/util/GregorianCalendar;->isGregorian:Z

    :cond_2
    iget-boolean v4, p0, Landroid/icu/util/GregorianCalendar;->isGregorian:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_9

    rem-int/lit8 v4, p1, 0x64

    if-nez v4, :cond_3

    rem-int/lit16 v4, p1, 0x190

    if-nez v4, :cond_9

    :cond_3
    const/4 v0, 0x1

    :goto_3
    const/16 v4, 0x190

    invoke-static {v3, v4}, Landroid/icu/util/GregorianCalendar;->floorDivide(II)I

    move-result v4

    const/16 v5, 0x64

    invoke-static {v3, v5}, Landroid/icu/util/GregorianCalendar;->floorDivide(II)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    :cond_4
    if-eqz p2, :cond_5

    sget-object v4, Landroid/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    aget-object v5, v4, p2

    if-eqz v0, :cond_a

    const/4 v4, 0x3

    :goto_4
    aget v4, v5, v4

    add-int/2addr v1, v4

    :cond_5
    return v1

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    move v4, v6

    goto :goto_1

    :cond_8
    move v6, v5

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    const/4 v4, 0x2

    goto :goto_4
.end method

.method protected handleGetExtendedYear()I
    .locals 7

    const/16 v6, 0x7b2

    const/4 v5, 0x0

    const/16 v4, 0x13

    const/4 v3, 0x1

    invoke-virtual {p0, v4, v3}, Landroid/icu/util/GregorianCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {p0, v4, v6}, Landroid/icu/util/GregorianCalendar;->internalGet(II)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v5, v3}, Landroid/icu/util/GregorianCalendar;->internalGet(II)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v3, v3}, Landroid/icu/util/GregorianCalendar;->internalGet(II)I

    move-result v2

    rsub-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v6}, Landroid/icu/util/GregorianCalendar;->internalGet(II)I

    move-result v1

    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 1

    sget-object v0, Landroid/icu/util/GregorianCalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected handleGetMonthLength(II)I
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p2, :cond_0

    const/16 v3, 0xb

    if-le p2, v3, :cond_1

    :cond_0
    new-array v0, v1, [I

    const/16 v3, 0xc

    invoke-static {p2, v3, v0}, Landroid/icu/util/GregorianCalendar;->floorDivide(II[I)I

    move-result v3

    add-int/2addr p1, v3

    aget p2, v0, v2

    :cond_1
    sget-object v3, Landroid/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    aget-object v3, v3, p2

    invoke-virtual {p0, p1}, Landroid/icu/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    aget v1, v3, v1

    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method protected handleGetYearLength(I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    invoke-super {p0}, Landroid/icu/util/Calendar;->hashCode()I

    move-result v0

    iget-wide v2, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method inDaylightTime()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->complete()V

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/icu/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isEquivalentTo(Landroid/icu/util/Calendar;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    check-cast p1, Landroid/icu/util/GregorianCalendar;

    iget-wide v4, p1, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLeapYear(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    if-lt p1, v2, :cond_2

    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_1

    rem-int/lit8 v2, p1, 0x64

    if-nez v2, :cond_0

    rem-int/lit16 v2, p1, 0x190

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    rem-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public roll(II)V
    .locals 10

    const/16 v7, 0x34

    const/4 v9, 0x3

    const/4 v8, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/icu/util/Calendar;->roll(II)V

    return-void

    :pswitch_0
    invoke-virtual {p0, v9}, Landroid/icu/util/GregorianCalendar;->get(I)I

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {p0, v6}, Landroid/icu/util/GregorianCalendar;->get(I)I

    move-result v1

    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Landroid/icu/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Landroid/icu/util/GregorianCalendar;->internalGet(I)I

    move-result v6

    if-nez v6, :cond_5

    if-lt v5, v7, :cond_0

    invoke-virtual {p0, v1}, Landroid/icu/util/GregorianCalendar;->handleGetYearLength(I)I

    move-result v6

    add-int/2addr v0, v6

    :cond_0
    :goto_0
    add-int/2addr v5, p2

    if-lt v5, v8, :cond_1

    if-le v5, v7, :cond_4

    :cond_1
    invoke-virtual {p0, v1}, Landroid/icu/util/GregorianCalendar;->handleGetYearLength(I)I

    move-result v2

    sub-int v6, v2, v0

    const/4 v7, 0x7

    invoke-virtual {p0, v7}, Landroid/icu/util/GregorianCalendar;->internalGet(I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v7

    sub-int/2addr v6, v7

    rem-int/lit8 v3, v6, 0x7

    if-gez v3, :cond_2

    add-int/lit8 v3, v3, 0x7

    :cond_2
    rsub-int/lit8 v6, v3, 0x6

    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v7

    if-lt v6, v7, :cond_3

    add-int/lit8 v2, v2, -0x7

    :cond_3
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v2, v6}, Landroid/icu/util/GregorianCalendar;->weekNumber(II)I

    move-result v4

    add-int v6, v5, v4

    add-int/lit8 v6, v6, -0x1

    rem-int/2addr v6, v4

    add-int/lit8 v5, v6, 0x1

    :cond_4
    invoke-virtual {p0, v9, v5}, Landroid/icu/util/GregorianCalendar;->set(II)V

    invoke-virtual {p0, v8, v1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    return-void

    :cond_5
    if-ne v5, v8, :cond_0

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/icu/util/GregorianCalendar;->handleGetYearLength(I)I

    move-result v6

    sub-int/2addr v0, v6

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public setGregorianChange(Ljava/util/Date;)V
    .locals 8

    const v7, 0x7fffffff

    const/high16 v6, -0x80000000

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    iget-wide v2, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    const-wide v4, -0x28ec76c40e65000L

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    iput v6, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    iput v6, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    :goto_0
    return-void

    :cond_0
    iget-wide v2, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    const-wide v4, 0x28d47dbbf19b000L

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iput v7, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    iput v7, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    const-wide/32 v4, 0x5265c00

    invoke-static {v2, v3, v4, v5}, Landroid/icu/util/GregorianCalendar;->floorDivide(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;)V

    invoke-virtual {v0, p1}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/icu/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    goto :goto_0
.end method
