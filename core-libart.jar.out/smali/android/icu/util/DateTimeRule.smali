.class public Landroid/icu/util/DateTimeRule;
.super Ljava/lang/Object;
.source "DateTimeRule.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DOM:I = 0x0

.field public static final DOW:I = 0x1

.field private static final DOWSTR:[Ljava/lang/String;

.field public static final DOW_GEQ_DOM:I = 0x2

.field public static final DOW_LEQ_DOM:I = 0x3

.field private static final MONSTR:[Ljava/lang/String;

.field public static final STANDARD_TIME:I = 0x1

.field public static final UTC_TIME:I = 0x2

.field public static final WALL_TIME:I = 0x0

.field private static final serialVersionUID:J = 0x1e4bc5ae0dd30373L


# instance fields
.field private final dateRuleType:I

.field private final dayOfMonth:I

.field private final dayOfWeek:I

.field private final millisInDay:I

.field private final month:I

.field private final timeRuleType:I

.field private final weekInMonth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "Sun"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Mon"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Tue"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Wed"

    aput-object v1, v0, v7

    const-string/jumbo v1, "Thu"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Fri"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "Sat"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Jan"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Feb"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Mar"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Apr"

    aput-object v1, v0, v6

    const-string/jumbo v1, "May"

    aput-object v1, v0, v7

    const-string/jumbo v1, "Jun"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Jul"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "Aug"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "Sep"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Oct"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "Nov"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "Dec"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/DateTimeRule;->MONSTR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/icu/util/DateTimeRule;->dateRuleType:I

    iput p1, p0, Landroid/icu/util/DateTimeRule;->month:I

    iput p2, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    iput p3, p0, Landroid/icu/util/DateTimeRule;->millisInDay:I

    iput p4, p0, Landroid/icu/util/DateTimeRule;->timeRuleType:I

    iput v0, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    iput v0, p0, Landroid/icu/util/DateTimeRule;->weekInMonth:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/util/DateTimeRule;->dateRuleType:I

    iput p1, p0, Landroid/icu/util/DateTimeRule;->month:I

    iput p2, p0, Landroid/icu/util/DateTimeRule;->weekInMonth:I

    iput p3, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    iput p4, p0, Landroid/icu/util/DateTimeRule;->millisInDay:I

    iput p5, p0, Landroid/icu/util/DateTimeRule;->timeRuleType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    return-void
.end method

.method public constructor <init>(IIIZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Landroid/icu/util/DateTimeRule;->dateRuleType:I

    iput p1, p0, Landroid/icu/util/DateTimeRule;->month:I

    iput p2, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    iput p3, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    iput p5, p0, Landroid/icu/util/DateTimeRule;->millisInDay:I

    iput p6, p0, Landroid/icu/util/DateTimeRule;->timeRuleType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/DateTimeRule;->weekInMonth:I

    return-void

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public getDateRuleType()I
    .locals 1

    iget v0, p0, Landroid/icu/util/DateTimeRule;->dateRuleType:I

    return v0
.end method

.method public getRuleDayOfMonth()I
    .locals 1

    iget v0, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    return v0
.end method

.method public getRuleDayOfWeek()I
    .locals 1

    iget v0, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    return v0
.end method

.method public getRuleMillisInDay()I
    .locals 1

    iget v0, p0, Landroid/icu/util/DateTimeRule;->millisInDay:I

    return v0
.end method

.method public getRuleMonth()I
    .locals 1

    iget v0, p0, Landroid/icu/util/DateTimeRule;->month:I

    return v0
.end method

.method public getRuleWeekInMonth()I
    .locals 1

    iget v0, p0, Landroid/icu/util/DateTimeRule;->weekInMonth:I

    return v0
.end method

.method public getTimeRuleType()I
    .locals 1

    iget v0, p0, Landroid/icu/util/DateTimeRule;->timeRuleType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v8, p0, Landroid/icu/util/DateTimeRule;->dateRuleType:I

    packed-switch v8, :pswitch_data_0

    :goto_0
    iget v8, p0, Landroid/icu/util/DateTimeRule;->timeRuleType:I

    packed-switch v8, :pswitch_data_1

    :goto_1
    iget v7, p0, Landroid/icu/util/DateTimeRule;->millisInDay:I

    rem-int/lit16 v2, v7, 0x3e8

    div-int/lit16 v7, v7, 0x3e8

    rem-int/lit8 v6, v7, 0x3c

    div-int/lit8 v7, v7, 0x3c

    rem-int/lit8 v3, v7, 0x3c

    div-int/lit8 v1, v7, 0x3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "month="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/icu/util/DateTimeRule;->MONSTR:[Ljava/lang/String;

    iget v9, p0, Landroid/icu/util/DateTimeRule;->month:I

    aget-object v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ", date="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ", time="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v8, v3, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    rem-int/lit8 v8, v3, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v8, v6, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    rem-int/lit8 v8, v6, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v8, v2, 0x64

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    div-int/lit8 v8, v2, 0xa

    rem-int/lit8 v8, v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    rem-int/lit8 v8, v2, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ")"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :pswitch_0
    iget v8, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Landroid/icu/util/DateTimeRule;->weekInMonth:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    iget v10, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    iget v10, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ">="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    iget v10, p0, Landroid/icu/util/DateTimeRule;->dayOfWeek:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "<="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/icu/util/DateTimeRule;->dayOfMonth:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v5, "WALL"

    goto/16 :goto_1

    :pswitch_5
    const-string/jumbo v5, "STD"

    goto/16 :goto_1

    :pswitch_6
    const-string/jumbo v5, "UTC"

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
