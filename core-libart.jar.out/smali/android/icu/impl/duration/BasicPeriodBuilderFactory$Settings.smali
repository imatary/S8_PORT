.class Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
.super Ljava/lang/Object;
.source "BasicPeriodBuilderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/BasicPeriodBuilderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Settings"
.end annotation


# instance fields
.field allowMillis:Z

.field allowZero:Z

.field inUse:Z

.field maxLimit:I

.field maxUnit:Landroid/icu/impl/duration/TimeUnit;

.field minLimit:I

.field minUnit:Landroid/icu/impl/duration/TimeUnit;

.field final synthetic this$0:Landroid/icu/impl/duration/BasicPeriodBuilderFactory;

.field uset:S

.field weeksAloneOnly:Z


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->this$0:Landroid/icu/impl/duration/BasicPeriodBuilderFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput-short v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    iput-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    iput-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    return-void
.end method


# virtual methods
.method public copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 2

    new-instance v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->this$0:Landroid/icu/impl/duration/BasicPeriodBuilderFactory;

    invoke-direct {v0, v1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory;)V

    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    iput-boolean v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    iget-short v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    iput-short v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    iput-object v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    iput-object v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    iget v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    iput v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    iget v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    iput v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    iput-boolean v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    iput-boolean v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    iput-boolean v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    return-object v0
.end method

.method createLimited(JZ)Landroid/icu/impl/duration/Period;
    .locals 17

    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    if-lez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    invoke-static {v5}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v10, v10, p1

    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    int-to-long v12, v5

    mul-long/2addr v12, v8

    cmp-long v5, v10, v12

    if-lez v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    int-to-float v5, v5

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v5, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    invoke-static {v5, v10}, Landroid/icu/impl/duration/Period;->moreThan(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    move-result-object v5

    return-object v5

    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    if-lez v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveMinUnit()Landroid/icu/impl/duration/TimeUnit;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    int-to-long v2, v5

    :goto_0
    const-wide/16 v10, 0x3e8

    mul-long v10, v10, p1

    mul-long v12, v2, v6

    cmp-long v5, v10, v12

    if-gez v5, :cond_2

    long-to-float v5, v2

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v5, v10

    invoke-static {v5, v4}, Landroid/icu/impl/duration/Period;->lessThan(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    move-result-object v5

    return-object v5

    :cond_1
    const-wide/16 v10, 0x3e8

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    invoke-static {v5}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    int-to-long v14, v5

    mul-long/2addr v12, v14

    div-long/2addr v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    return-object v5
.end method

.method effectiveMinUnit()Landroid/icu/impl/duration/TimeUnit;
    .locals 3

    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    sget-object v2, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    return-object v1

    :cond_1
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    iget-short v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    aget-object v1, v1, v0

    return-object v1

    :cond_3
    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    return-object v1
.end method

.method effectiveSet()S
    .locals 3

    iget-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    if-eqz v0, :cond_0

    iget-short v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    return v0

    :cond_0
    iget-short v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    iget-byte v1, v1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    const/4 v2, 0x1

    shl-int v1, v2, v1

    not-int v1, v1

    and-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method setAllowMilliseconds(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 2

    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    if-ne v1, p1, :cond_0

    return-object p0

    :cond_0
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    :goto_0
    iput-boolean p1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowMillis:Z

    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method setAllowZero(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 2

    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    if-ne v1, p1, :cond_0

    return-object p0

    :cond_0
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    :goto_0
    iput-boolean p1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->allowZero:Z

    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method setInUse()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    return-object p0
.end method

.method setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->this$0:Landroid/icu/impl/duration/BasicPeriodBuilderFactory;

    invoke-static {v2}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->-get0(Landroid/icu/impl/duration/BasicPeriodBuilderFactory;)Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/icu/impl/duration/impl/PeriodFormatterDataService;->get(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->allowZero()Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowZero(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->weeksAloneOnly()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setWeeksAloneOnly(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->useMilliseconds()I

    move-result v3

    if-eq v3, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowMilliseconds(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setMaxLimit(F)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 3

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    int-to-float v2, v1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    return-object p0

    :cond_0
    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p1

    float-to-int v1, v2

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    :goto_1
    iput v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxLimit:I

    return-object v0

    :cond_2
    move-object v0, p0

    goto :goto_1
.end method

.method setMinLimit(F)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 3

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    int-to-float v2, v1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    return-object p0

    :cond_0
    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p1

    float-to-int v1, v2

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    :goto_1
    iput v1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minLimit:I

    return-object v0

    :cond_2
    move-object v0, p0

    goto :goto_1
.end method

.method setUnits(I)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0xff

    const/4 v4, -0x1

    iget-short v3, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    if-ne v3, p1, :cond_0

    return-object p0

    :cond_0
    iget-boolean v3, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v2

    :goto_0
    int-to-short v3, p1

    iput-short v3, v2, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    and-int/lit16 v3, p1, 0xff

    if-ne v3, v5, :cond_2

    iput-short v5, v2, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    iput-object v3, v2, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    iput-object v3, v2, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    :goto_1
    return-object v2

    :cond_1
    move-object v2, p0

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_2
    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    and-int/2addr v3, p1

    if-eqz v3, :cond_4

    if-ne v1, v4, :cond_3

    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    aget-object v3, v3, v0

    iput-object v3, v2, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    :cond_3
    move v1, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    if-ne v1, v4, :cond_6

    iput-object v6, v2, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->maxUnit:Landroid/icu/impl/duration/TimeUnit;

    iput-object v6, v2, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    goto :goto_1

    :cond_6
    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    aget-object v3, v3, v1

    iput-object v3, v2, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->minUnit:Landroid/icu/impl/duration/TimeUnit;

    goto :goto_1
.end method

.method setWeeksAloneOnly(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 2

    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    if-ne v1, p1, :cond_0

    return-object p0

    :cond_0
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->inUse:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->copy()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    :goto_0
    iput-boolean p1, v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->weeksAloneOnly:Z

    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method
