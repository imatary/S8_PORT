.class public Landroid/icu/util/SimpleTimeZone;
.super Landroid/icu/util/BasicTimeZone;
.source "SimpleTimeZone.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DOM_MODE:I = 0x1

.field private static final DOW_GE_DOM_MODE:I = 0x3

.field private static final DOW_IN_MONTH_MODE:I = 0x2

.field private static final DOW_LE_DOM_MODE:I = 0x4

.field public static final STANDARD_TIME:I = 0x1

.field public static final UTC_TIME:I = 0x2

.field public static final WALL_TIME:I = 0x0

.field private static final serialVersionUID:J = -0x61a030c4b2083e91L

.field private static final staticMonthLength:[B


# instance fields
.field private dst:I

.field private transient dstRule:Landroid/icu/util/AnnualTimeZoneRule;

.field private endDay:I

.field private endDayOfWeek:I

.field private endMode:I

.field private endMonth:I

.field private endTime:I

.field private endTimeMode:I

.field private transient firstTransition:Landroid/icu/util/TimeZoneTransition;

.field private transient initialRule:Landroid/icu/util/InitialTimeZoneRule;

.field private volatile transient isFrozen:Z

.field private raw:I

.field private startDay:I

.field private startDayOfWeek:I

.field private startMode:I

.field private startMonth:I

.field private startTime:I

.field private startTimeMode:I

.field private startYear:I

.field private transient stdRule:Landroid/icu/util/AnnualTimeZoneRule;

.field private transient transitionRulesInitialized:Z

.field private useDaylight:Z

.field private xinfo:Landroid/icu/util/STZInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/util/SimpleTimeZone;->-assertionsDisabled:Z

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/util/SimpleTimeZone;->staticMonthLength:[B

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x1ft
        0x1dt
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 13

    const v12, 0x36ee80

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    iput v12, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    iput-boolean v2, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v2

    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIII)V
    .locals 13

    invoke-direct {p0, p2}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const v0, 0x36ee80

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    const/4 v6, 0x0

    const/4 v11, 0x0

    const v12, 0x36ee80

    move-object v0, p0

    move v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIII)V
    .locals 13

    invoke-direct {p0, p2}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const v0, 0x36ee80

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIIIII)V
    .locals 13

    invoke-direct {p0, p2}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const v0, 0x36ee80

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    move-object v0, p0

    move v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    return-void
.end method

.method private compareToRule(IIIIIIIIIIII)I
    .locals 5

    add-int/2addr p6, p7

    :cond_0
    :goto_0
    const v2, 0x5265c00

    if-lt p6, v2, :cond_1

    const v2, 0x5265c00

    sub-int/2addr p6, v2

    add-int/lit8 p4, p4, 0x1

    rem-int/lit8 v2, p5, 0x7

    add-int/lit8 p5, v2, 0x1

    if-le p4, p2, :cond_0

    const/4 p4, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gez p6, :cond_3

    add-int/lit8 p4, p4, -0x1

    add-int/lit8 v2, p5, 0x5

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 p5, v2, 0x1

    const/4 v2, 0x1

    if-ge p4, v2, :cond_2

    move p4, p3

    add-int/lit8 p1, p1, -0x1

    :cond_2
    const v2, 0x5265c00

    add-int/2addr p6, v2

    goto :goto_1

    :cond_3
    if-ge p1, p9, :cond_4

    const/4 v2, -0x1

    return v2

    :cond_4
    if-le p1, p9, :cond_5

    const/4 v2, 0x1

    return v2

    :cond_5
    const/4 v1, 0x0

    move/from16 v0, p11

    if-le v0, p2, :cond_6

    move/from16 p11, p2

    :cond_6
    packed-switch p8, :pswitch_data_0

    :goto_2
    if-ge p4, v1, :cond_8

    const/4 v2, -0x1

    return v2

    :pswitch_0
    move/from16 v1, p11

    goto :goto_2

    :pswitch_1
    if-lez p11, :cond_7

    add-int/lit8 v2, p11, -0x1

    mul-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p10, 0x7

    sub-int v4, p5, p4

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x7

    add-int v1, v2, v3

    goto :goto_2

    :cond_7
    add-int/lit8 v2, p11, 0x1

    mul-int/lit8 v2, v2, 0x7

    add-int/2addr v2, p2

    add-int v3, p5, p2

    sub-int/2addr v3, p4

    add-int/lit8 v3, v3, 0x7

    sub-int/2addr v3, p10

    rem-int/lit8 v3, v3, 0x7

    sub-int v1, v2, v3

    goto :goto_2

    :pswitch_2
    add-int/lit8 v2, p10, 0x31

    sub-int v2, v2, p11

    sub-int/2addr v2, p5

    add-int/2addr v2, p4

    rem-int/lit8 v2, v2, 0x7

    add-int v1, p11, v2

    goto :goto_2

    :pswitch_3
    rsub-int/lit8 v2, p10, 0x31

    add-int v2, v2, p11

    add-int/2addr v2, p5

    sub-int/2addr v2, p4

    rem-int/lit8 v2, v2, 0x7

    sub-int v1, p11, v2

    goto :goto_2

    :cond_8
    if-le p4, v1, :cond_9

    const/4 v2, 0x1

    return v2

    :cond_9
    move/from16 v0, p12

    if-ge p6, v0, :cond_a

    const/4 v2, -0x1

    return v2

    :cond_a
    move/from16 v0, p12

    if-le p6, v0, :cond_b

    const/4 v2, 0x1

    return v2

    :cond_b
    const/4 v2, 0x0

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private construct(IIIIIIIIIIII)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    iput p2, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iput p3, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    iput p4, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iput p5, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    iput p6, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    iput p7, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    iput p8, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    iput p9, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iput p10, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    iput p11, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    iput p12, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    iput v1, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    iput v1, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeRules()V

    if-gtz p12, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private decodeEndRule()V
    .locals 5

    const v4, 0x5265c00

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    if-nez v0, :cond_1

    iput v4, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    :cond_1
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    const/16 v2, 0xb

    if-le v0, v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    if-le v0, v4, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_5
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    if-gt v0, v3, :cond_4

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-nez v0, :cond_8

    iput v1, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    :cond_6
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    if-ne v0, v3, :cond_b

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_7

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_d

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-lez v0, :cond_9

    iput v3, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    :goto_0
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    const/4 v2, 0x7

    if-le v0, v2, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_9
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-lez v0, :cond_a

    const/4 v0, 0x3

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    goto :goto_0

    :cond_a
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    neg-int v0, v0

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    goto :goto_0

    :cond_b
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-lt v0, v1, :cond_c

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    sget-object v1, Landroid/icu/util/SimpleTimeZone;->staticMonthLength:[B

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    aget-byte v1, v1, v2

    if-le v0, v1, :cond_d

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_d
    return-void
.end method

.method private decodeRules()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeStartRule()V

    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeEndRule()V

    return-void
.end method

.method private decodeStartRule()V
    .locals 5

    const v4, 0x5265c00

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    if-nez v0, :cond_1

    iput v4, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    :cond_1
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    const/16 v2, 0xb

    if-le v0, v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    if-le v0, v4, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_5
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    if-gt v0, v3, :cond_4

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-nez v0, :cond_8

    iput v1, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    :cond_6
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    if-ne v0, v3, :cond_b

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_7

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_d

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-lez v0, :cond_9

    iput v3, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    :goto_0
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v2, 0x7

    if-le v0, v2, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_9
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    if-lez v0, :cond_a

    const/4 v0, 0x3

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    goto :goto_0

    :cond_a
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    neg-int v0, v0

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    goto :goto_0

    :cond_b
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    if-lt v0, v1, :cond_c

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    sget-object v1, Landroid/icu/util/SimpleTimeZone;->staticMonthLength:[B

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    aget-byte v1, v1, v2

    if-le v0, v1, :cond_d

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_d
    return-void
.end method

.method private getOffset(IIIIIIII)I
    .locals 19

    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    if-ltz p3, :cond_0

    const/16 v2, 0xb

    move/from16 v0, p3

    if-gt v0, v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, p4

    if-lt v0, v2, :cond_0

    move/from16 v0, p4

    move/from16 v1, p7

    if-gt v0, v1, :cond_0

    const/4 v2, 0x1

    move/from16 v0, p5

    if-lt v0, v2, :cond_0

    const/4 v2, 0x7

    move/from16 v0, p5

    if-gt v0, v2, :cond_0

    if-ltz p6, :cond_0

    const v2, 0x5265c00

    move/from16 v0, p6

    if-ge v0, v2, :cond_0

    const/16 v2, 0x1c

    move/from16 v0, p7

    if-lt v0, v2, :cond_0

    const/16 v2, 0x1f

    move/from16 v0, p7

    if-gt v0, v2, :cond_0

    const/16 v2, 0x1c

    move/from16 v0, p8

    if-lt v0, v2, :cond_0

    const/16 v2, 0x1f

    move/from16 v0, p8

    if-gt v0, v2, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/util/SimpleTimeZone;->raw:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    move/from16 v0, p2

    if-ge v0, v2, :cond_3

    :cond_2
    return v16

    :cond_3
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    if-le v2, v3, :cond_7

    const/16 v17, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/util/SimpleTimeZone;->raw:I

    neg-int v9, v2

    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v2 .. v14}, Landroid/icu/util/SimpleTimeZone;->compareToRule(IIIIIIIIIIII)I

    move-result v18

    const/4 v15, 0x0

    if-ltz v18, :cond_9

    const/4 v2, 0x1

    :goto_2
    move/from16 v0, v17

    if-eq v0, v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget v9, v0, Landroid/icu/util/SimpleTimeZone;->dst:I

    :goto_3
    move-object/from16 v0, p0

    iget v10, v0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v2 .. v14}, Landroid/icu/util/SimpleTimeZone;->compareToRule(IIIIIIIIIIII)I

    move-result v15

    :cond_4
    if-nez v17, :cond_c

    if-ltz v18, :cond_c

    if-gez v15, :cond_c

    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/util/SimpleTimeZone;->dst:I

    add-int v16, v16, v2

    :cond_6
    return v16

    :cond_7
    const/16 v17, 0x0

    goto :goto_0

    :cond_8
    const/4 v9, 0x0

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/util/SimpleTimeZone;->raw:I

    neg-int v9, v2

    goto :goto_3

    :cond_b
    const/4 v9, 0x0

    goto :goto_3

    :cond_c
    if-eqz v17, :cond_6

    if-gez v18, :cond_5

    if-gez v15, :cond_6

    goto :goto_4
.end method

.method private getSTZInfo()Landroid/icu/util/STZInfo;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/util/STZInfo;

    invoke-direct {v0}, Landroid/icu/util/STZInfo;-><init>()V

    iput-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    :cond_0
    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    return-object v0
.end method

.method private idEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized initTransitionRules()V
    .locals 20

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v7, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    new-instance v8, Landroid/icu/util/AnnualTimeZoneRule;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "(DST)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v11

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    const v14, 0x7fffffff

    move-object v12, v2

    invoke-direct/range {v8 .. v14}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v7, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    packed-switch v3, :pswitch_data_1

    :goto_3
    new-instance v8, Landroid/icu/util/AnnualTimeZoneRule;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "(STD)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v10

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    const/4 v11, 0x0

    const v14, 0x7fffffff

    move-object v12, v2

    invoke-direct/range {v8 .. v14}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    cmp-long v3, v18, v16

    if-gez v3, :cond_5

    new-instance v3, Landroid/icu/util/InitialTimeZoneRule;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "(DST)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    new-instance v3, Landroid/icu/util/TimeZoneTransition;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    move-wide/from16 v0, v18

    invoke-direct {v3, v0, v1, v4, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;

    :goto_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v7, 0x2

    goto/16 :goto_0

    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_0

    :pswitch_0
    new-instance v2, Landroid/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/icu/util/DateTimeRule;-><init>(IIII)V

    goto/16 :goto_1

    :pswitch_1
    new-instance v2, Landroid/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    invoke-direct/range {v2 .. v7}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    goto/16 :goto_1

    :pswitch_2
    new-instance v2, Landroid/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    const/4 v12, 0x1

    move-object v8, v2

    move v14, v7

    invoke-direct/range {v8 .. v14}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto/16 :goto_1

    :pswitch_3
    new-instance v2, Landroid/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    const/4 v12, 0x0

    move-object v8, v2

    move v14, v7

    invoke-direct/range {v8 .. v14}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const/4 v7, 0x2

    goto/16 :goto_2

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_2

    :pswitch_4
    new-instance v2, Landroid/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/icu/util/DateTimeRule;-><init>(IIII)V

    goto/16 :goto_3

    :pswitch_5
    new-instance v2, Landroid/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    invoke-direct/range {v2 .. v7}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    goto/16 :goto_3

    :pswitch_6
    new-instance v2, Landroid/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    const/4 v12, 0x1

    move-object v8, v2

    move v14, v7

    invoke-direct/range {v8 .. v14}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto/16 :goto_3

    :pswitch_7
    new-instance v2, Landroid/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    const/4 v12, 0x0

    move-object v8, v2

    move v14, v7

    invoke-direct/range {v8 .. v14}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto/16 :goto_3

    :cond_5
    new-instance v3, Landroid/icu/util/InitialTimeZoneRule;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "(STD)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    new-instance v3, Landroid/icu/util/TimeZoneTransition;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    move-wide/from16 v0, v16

    invoke-direct {v3, v0, v1, v4, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_6
    :try_start_3
    new-instance v3, Landroid/icu/util/InitialTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    invoke-virtual {v0, p0}, Landroid/icu/util/STZInfo;->applyTo(Landroid/icu/util/SimpleTimeZone;)V

    :cond_0
    return-void
.end method

.method private setEndRule(IIIII)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Landroid/icu/util/SimpleTimeZone;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    iput p2, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    iput p3, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iput p4, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    iput p5, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeEndRule()V

    iput-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void
.end method

.method private setEndRule(IIIIIZ)V
    .locals 6

    sget-boolean v0, Landroid/icu/util/SimpleTimeZone;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_2

    move v2, p2

    :goto_1
    neg-int v3, p3

    move-object v0, p0

    move v1, p1

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIIII)V

    return-void

    :cond_2
    neg-int v2, p2

    goto :goto_1
.end method

.method private setStartRule(IIIII)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Landroid/icu/util/SimpleTimeZone;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iput p2, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    iput p3, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iput p4, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    iput p5, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeStartRule()V

    iput-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 2

    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Landroid/icu/util/SimpleTimeZone;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/icu/util/SimpleTimeZone;

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->raw:I

    if-ne v3, v4, :cond_6

    iget-boolean v3, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v4, v0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-ne v3, v4, :cond_6

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/icu/util/SimpleTimeZone;->idEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->dst:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    if-ne v3, v4, :cond_4

    :cond_3
    :goto_0
    return v1

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    return-object p0
.end method

.method public getDSTSavings()I
    .locals 1

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    return v0
.end method

.method public getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 11

    const/4 v10, 0x0

    iget-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-nez v1, :cond_0

    return-object v10

    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->initTransitionRules()V

    iget-object v1, p0, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v8

    cmp-long v1, p1, v8

    if-ltz v1, :cond_1

    if-eqz p3, :cond_2

    cmp-long v1, p1, v8

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;

    return-object v1

    :cond_2
    iget-object v1, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v2}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v2}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    move-wide v2, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v7

    iget-object v1, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v2}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v2}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    move-wide v2, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    if-eqz v7, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v7, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v5, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    return-object v1

    :cond_4
    if-eqz v0, :cond_6

    if-eqz v7, :cond_5

    invoke-virtual {v0, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    new-instance v1, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v5, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    return-object v1

    :cond_6
    return-object v10
.end method

.method public getOffset(IIIIII)I
    .locals 8

    if-ltz p3, :cond_0

    const/16 v0, 0xb

    if-le p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p2, p3}, Landroid/icu/impl/Grego;->monthLength(II)I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIIII)I

    move-result v0

    return v0
.end method

.method public getOffset(IIIIIII)I
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p3, :cond_0

    const/16 v0, 0xb

    if-le p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p2, p3}, Landroid/icu/impl/Grego;->monthLength(II)I

    move-result v7

    invoke-static {p2, p3}, Landroid/icu/impl/Grego;->previousMonthLength(II)I

    move-result v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIIIII)I

    move-result v0

    return v0
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p5, v1

    const/4 v0, 0x6

    new-array v7, v0, [I

    invoke-static {p1, p2, v7}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    const/4 v0, 0x0

    aget v2, v7, v0

    const/4 v0, 0x1

    aget v3, v7, v0

    const/4 v0, 0x2

    aget v4, v7, v0

    const/4 v0, 0x3

    aget v5, v7, v0

    const/4 v0, 0x5

    aget v6, v7, v0

    const/4 v1, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v0

    const/4 v1, 0x0

    aget v1, p5, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p5, v1

    const/4 v8, 0x0

    const/4 v0, 0x1

    aget v0, p5, v0

    if-lez v0, :cond_3

    and-int/lit8 v0, p3, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    and-int/lit8 v0, p3, 0x3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    and-int/lit8 v0, p3, 0xc

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p1, v0

    const/4 v8, 0x1

    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    invoke-static {p1, p2, v7}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    const/4 v0, 0x0

    aget v2, v7, v0

    const/4 v0, 0x1

    aget v3, v7, v0

    const/4 v0, 0x2

    aget v4, v7, v0

    const/4 v0, 0x3

    aget v5, v7, v0

    const/4 v0, 0x5

    aget v6, v7, v0

    const/4 v1, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v0

    const/4 v1, 0x0

    aget v1, p5, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p5, v1

    :cond_2
    return-void

    :cond_3
    and-int/lit8 v0, p4, 0x3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    and-int/lit8 v0, p4, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    and-int/lit8 v0, p4, 0xc

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_4
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p1, v0

    const/4 v8, 0x1

    goto :goto_0
.end method

.method public getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 11

    const/4 v10, 0x0

    iget-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-nez v1, :cond_0

    return-object v10

    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->initTransitionRules()V

    iget-object v1, p0, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v8

    cmp-long v1, p1, v8

    if-ltz v1, :cond_1

    if-nez p3, :cond_2

    cmp-long v1, p1, v8

    if-nez v1, :cond_2

    :cond_1
    return-object v10

    :cond_2
    iget-object v1, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v2}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v2}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    move-wide v2, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v7

    iget-object v1, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v2}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v2}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    move-wide v2, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    if-eqz v7, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v7, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v5, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    return-object v1

    :cond_4
    if-eqz v0, :cond_6

    if-eqz v7, :cond_5

    invoke-virtual {v0, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    new-instance v1, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v5, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    return-object v1

    :cond_6
    return-object v10
.end method

.method public getRawOffset()I
    .locals 1

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    return v0
.end method

.method public getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
    .locals 5

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->initTransitionRules()V

    iget-boolean v3, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x3

    :goto_0
    new-array v0, v1, [Landroid/icu/util/TimeZoneRule;

    iget-object v3, p0, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    iget-boolean v3, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    aput-object v3, v0, v2

    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v3, 0x2

    aput-object v2, v0, v3

    :cond_0
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public hasSameRules(Landroid/icu/util/TimeZone;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Landroid/icu/util/SimpleTimeZone;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_5

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->raw:I

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v4, v0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->dst:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    iget v4, v0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    if-ne v3, v4, :cond_3

    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->hashCode()I

    move-result v1

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    add-int/2addr v2, v1

    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    ushr-int/lit8 v3, v1, 0x8

    iget-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v1, v3

    xor-int v0, v2, v1

    iget-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-nez v1, :cond_0

    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    ushr-int/lit8 v2, v2, 0xa

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    ushr-int/lit8 v2, v2, 0xb

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    ushr-int/lit8 v2, v2, 0xc

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    ushr-int/lit8 v2, v2, 0xd

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    ushr-int/lit8 v2, v2, 0xe

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    ushr-int/lit8 v2, v2, 0xf

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    ushr-int/lit8 v2, v2, 0x10

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    ushr-int/lit8 v2, v2, 0x11

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    ushr-int/lit8 v2, v2, 0x12

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    ushr-int/lit8 v2, v2, 0x13

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    ushr-int/lit8 v2, v2, 0x14

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    ushr-int/lit8 v2, v2, 0x15

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    ushr-int/lit8 v2, v2, 0x16

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    ushr-int/lit8 v2, v2, 0x17

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 2

    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0, p0}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;)V

    invoke-virtual {v0, p1}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0}, Landroid/icu/util/GregorianCalendar;->inDaylightTime()Z

    move-result v1

    return v1
.end method

.method public isFrozen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    return v0
.end method

.method public observesDaylightTime()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    return v0
.end method

.method public setDSTSavings(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    iput-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void
.end method

.method public setEndRule(III)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v0

    move v1, p1

    move v3, v2

    move v4, p3

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/STZInfo;->setEnd(IIIIIZ)V

    invoke-virtual {p0, p1, p2, v6, p3}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIII)V

    return-void
.end method

.method public setEndRule(IIII)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v0

    const/4 v5, -0x1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/STZInfo;->setEnd(IIIIIZ)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIIII)V

    return-void
.end method

.method public setEndRule(IIIIZ)V
    .locals 7

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v0

    const/4 v2, -0x1

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p2

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/STZInfo;->setEnd(IIIIIZ)V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIIIIZ)V

    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void
.end method

.method public setRawOffset(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void
.end method

.method public setStartRule(III)V
    .locals 9

    const/4 v2, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v0

    move v1, p1

    move v3, v2

    move v4, p3

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/STZInfo;->setStart(IIIIIZ)V

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v7, p3

    move v8, v6

    invoke-direct/range {v3 .. v8}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIIII)V

    return-void
.end method

.method public setStartRule(IIII)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v0

    const/4 v5, -0x1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/STZInfo;->setStart(IIIIIZ)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIIII)V

    return-void
.end method

.method public setStartRule(IIIIZ)V
    .locals 7

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v0

    const/4 v2, -0x1

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p2

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/STZInfo;->setStart(IIIIIZ)V

    if-eqz p5, :cond_1

    move v2, p2

    :goto_0
    neg-int v3, p3

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIIII)V

    return-void

    :cond_1
    neg-int v2, p2

    goto :goto_0
.end method

.method public setStartYear(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v0

    iput p1, v0, Landroid/icu/util/STZInfo;->sy:I

    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SimpleTimeZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    return v0
.end method
