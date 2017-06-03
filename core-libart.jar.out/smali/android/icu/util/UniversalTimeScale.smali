.class public final Landroid/icu/util/UniversalTimeScale;
.super Ljava/lang/Object;
.source "UniversalTimeScale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    }
.end annotation


# static fields
.field public static final DB2_TIME:I = 0x8

.field public static final DOTNET_DATE_TIME:I = 0x4

.field public static final EPOCH_OFFSET_MINUS_1_VALUE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EPOCH_OFFSET_PLUS_1_VALUE:I = 0x6

.field public static final EPOCH_OFFSET_VALUE:I = 0x1

.field public static final EXCEL_TIME:I = 0x7

.field public static final FROM_MAX_VALUE:I = 0x3

.field public static final FROM_MIN_VALUE:I = 0x2

.field public static final ICU4C_TIME:I = 0x2

.field public static final JAVA_TIME:I = 0x0

.field public static final MAC_OLD_TIME:I = 0x5

.field public static final MAC_TIME:I = 0x6

.field public static final MAX_ROUND_VALUE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_SCALE:I = 0xa

.field public static final MAX_SCALE_VALUE:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MIN_ROUND_VALUE:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TO_MAX_VALUE:I = 0x5

.field public static final TO_MIN_VALUE:I = 0x4

.field public static final UNITS_ROUND_VALUE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNITS_VALUE:I = 0x0

.field public static final UNIX_MICROSECONDS_TIME:I = 0x9

.field public static final UNIX_TIME:I = 0x1

.field public static final WINDOWS_FILE_TIME:I = 0x3

.field private static final days:J = 0xc92a69c000L

.field private static final hours:J = 0x861c46800L

.field private static final microseconds:J = 0xaL

.field private static final milliseconds:J = 0x2710L

.field private static final minutes:J = 0x23c34600L

.field private static final seconds:J = 0x989680L

.field private static final ticks:J = 0x1L

.field private static final timeScaleTable:[Landroid/icu/util/UniversalTimeScale$TimeScaleData;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/16 v2, 0x2710

    const-wide v4, 0x89f7ff5f7b58000L

    const-wide v6, -0x7ffffffffffffcd7L    # -3.997E-321

    const-wide v8, 0x7ffffffffffffcd7L

    const-wide v10, -0x37f5f6f906065L

    const-wide v12, 0x30e594b36b065L

    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/32 v2, 0x989680

    const-wide v4, 0x89f7ff5f7b58000L

    const-wide/high16 v6, -0x8000000000000000L

    const-wide v8, 0x7fffffffffffffffL

    const-wide v10, -0xe53726cce5L

    const-wide v12, 0xc84802dee5L

    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/16 v2, 0x2710

    const-wide v4, 0x89f7ff5f7b58000L

    const-wide v6, -0x7ffffffffffffcd7L    # -3.997E-321

    const-wide v8, 0x7ffffffffffffcd7L

    const-wide v10, -0x37f5f6f906065L

    const-wide v12, 0x30e594b36b065L

    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/16 v2, 0x1

    const-wide v4, 0x701ce1722770000L

    const-wide v6, -0x78fe31e8dd890000L    # -6.42831179684452E-275

    const-wide v8, 0x7fffffffffffffffL

    const-wide/high16 v10, -0x8000000000000000L

    const-wide v12, 0x78fe31e8dd88ffffL    # 6.533870374225853E274

    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    const-wide/high16 v6, -0x8000000000000000L

    const-wide v8, 0x7fffffffffffffffL

    const-wide/high16 v10, -0x8000000000000000L

    const-wide v12, 0x7fffffffffffffffL

    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/32 v2, 0x989680

    const-wide v4, 0x855809903724000L

    const-wide/high16 v6, -0x8000000000000000L

    const-wide v8, 0x7fffffffffffffffL

    const-wide v10, -0xe4bb011c65L

    const-wide v12, 0xc8c4288f65L

    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/32 v2, 0x989680

    const-wide v4, 0x8c2419ceb14c000L

    const-wide/high16 v6, -0x8000000000000000L

    const-wide v8, 0x7fffffffffffffffL

    const-wide v10, -0xe571769565L

    const-wide v12, 0xc80db31665L

    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide v2, 0xc92a69c000L

    const-wide v4, 0x8510489f5ed8000L

    const-wide/high16 v6, -0x8000000000000000L

    const-wide v8, 0x7fffffffffffffffL

    const-wide/32 v10, -0xad7959

    const-wide/32 v12, 0x984ea5

    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide v2, 0xc92a69c000L

    const-wide v4, 0x8510489f5ed8000L

    const-wide/high16 v6, -0x8000000000000000L

    const-wide v8, 0x7fffffffffffffffL

    const-wide/32 v10, -0xad7959

    const-wide/32 v12, 0x984ea5

    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/16 v2, 0xa

    const-wide v4, 0x89f7ff5f7b58000L

    const-wide v6, -0x7ffffffffffffffcL    # -2.0E-323

    const-wide v8, 0x7ffffffffffffffcL

    const-wide v10, -0xda98ccbcbf88cccL

    const-wide v12, 0xbf00ccdcda10cccL

    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/UniversalTimeScale;->timeScaleTable:[Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bigDecimalFrom(DI)Landroid/icu/math/BigDecimal;
    .locals 6

    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    new-instance v2, Landroid/icu/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/icu/math/BigDecimal;

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    invoke-direct {v3, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    new-instance v1, Landroid/icu/math/BigDecimal;

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    invoke-direct {v1, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    invoke-virtual {v2, v1}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v4

    return-object v4
.end method

.method public static bigDecimalFrom(JI)Landroid/icu/math/BigDecimal;
    .locals 6

    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    new-instance v2, Landroid/icu/math/BigDecimal;

    invoke-direct {v2, p0, p1}, Landroid/icu/math/BigDecimal;-><init>(J)V

    new-instance v3, Landroid/icu/math/BigDecimal;

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    invoke-direct {v3, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    new-instance v1, Landroid/icu/math/BigDecimal;

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    invoke-direct {v1, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    invoke-virtual {v2, v1}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v4

    return-object v4
.end method

.method public static bigDecimalFrom(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;
    .locals 6

    invoke-static {p1}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    new-instance v2, Landroid/icu/math/BigDecimal;

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    invoke-direct {v2, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    new-instance v1, Landroid/icu/math/BigDecimal;

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    invoke-direct {v1, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    invoke-virtual {p0, v1}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v3

    return-object v3
.end method

.method public static from(JI)J
    .locals 6

    invoke-static {p0, p1, p2}, Landroid/icu/util/UniversalTimeScale;->fromRangeCheck(JI)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    add-long/2addr v2, p0

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method private static fromRangeCheck(JI)Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    .locals 4

    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMin:J

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMax:J

    cmp-long v1, p0, v2

    if-gtz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "otherTime out of range:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    .locals 3

    if-ltz p0, :cond_0

    const/16 v0, 0xa

    if-lt p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scale out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Landroid/icu/util/UniversalTimeScale;->timeScaleTable:[Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getTimeScaleValue(II)J
    .locals 4

    invoke-static {p0}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    return-wide v2

    :pswitch_1
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    return-wide v2

    :pswitch_2
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMin:J

    return-wide v2

    :pswitch_3
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMax:J

    return-wide v2

    :pswitch_4
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMin:J

    return-wide v2

    :pswitch_5
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMax:J

    return-wide v2

    :pswitch_6
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J

    return-wide v2

    :pswitch_7
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J

    return-wide v2

    :pswitch_8
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    return-wide v2

    :pswitch_9
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->minRound:J

    return-wide v2

    :pswitch_a
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->maxRound:J

    return-wide v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static toBigDecimal(JI)Landroid/icu/math/BigDecimal;
    .locals 6

    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    new-instance v3, Landroid/icu/math/BigDecimal;

    invoke-direct {v3, p0, p1}, Landroid/icu/math/BigDecimal;-><init>(J)V

    new-instance v2, Landroid/icu/math/BigDecimal;

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    invoke-direct {v2, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    new-instance v1, Landroid/icu/math/BigDecimal;

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    invoke-direct {v1, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    const/4 v4, 0x4

    invoke-virtual {v3, v2, v4}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/icu/math/BigDecimal;->subtract(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v4

    return-object v4
.end method

.method public static toBigDecimal(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;
    .locals 6

    invoke-static {p1}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    new-instance v2, Landroid/icu/math/BigDecimal;

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    invoke-direct {v2, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    new-instance v1, Landroid/icu/math/BigDecimal;

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    invoke-direct {v1, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/icu/math/BigDecimal;->subtract(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v3

    return-object v3
.end method

.method public static toBigDecimalTrunc(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    new-instance v2, Landroid/icu/math/BigDecimal;

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    invoke-direct {v2, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    new-instance v1, Landroid/icu/math/BigDecimal;

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    invoke-direct {v1, v4, v5}, Landroid/icu/math/BigDecimal;-><init>(J)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/icu/math/BigDecimal;->subtract(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v3

    return-object v3
.end method

.method public static toLong(JI)J
    .locals 6

    invoke-static {p0, p1, p2}, Landroid/icu/util/UniversalTimeScale;->toRangeCheck(JI)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gez v1, :cond_1

    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->minRound:J

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    add-long/2addr v2, p0

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    div-long/2addr v2, v4

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J

    sub-long/2addr v2, v4

    return-wide v2

    :cond_0
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    sub-long v2, p0, v2

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    div-long/2addr v2, v4

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    sub-long/2addr v2, v4

    return-wide v2

    :cond_1
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->maxRound:J

    cmp-long v1, p0, v2

    if-lez v1, :cond_2

    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    sub-long v2, p0, v2

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    div-long/2addr v2, v4

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J

    sub-long/2addr v2, v4

    return-wide v2

    :cond_2
    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    add-long/2addr v2, p0

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    div-long/2addr v2, v4

    iget-wide v4, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method private static toRangeCheck(JI)Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    .locals 4

    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object v0

    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMin:J

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    iget-wide v2, v0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMax:J

    cmp-long v1, p0, v2

    if-gtz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "universalTime out of range:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
