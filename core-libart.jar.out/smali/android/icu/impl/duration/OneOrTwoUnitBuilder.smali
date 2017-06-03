.class Landroid/icu/impl/duration/OneOrTwoUnitBuilder;
.super Landroid/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/impl/duration/PeriodBuilderImpl;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-void
.end method

.method public static get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/OneOrTwoUnitBuilder;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;

    invoke-direct {v0, p0}, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-object v0
.end method


# virtual methods
.method protected handleCreate(JJZ)Landroid/icu/impl/duration/Period;
    .locals 15

    const/4 v5, 0x0

    iget-object v10, p0, Landroid/icu/impl/duration/PeriodBuilderImpl;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v10}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result v7

    const/4 v4, 0x0

    :goto_0
    sget-object v10, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length v10, v10

    if-ge v4, v10, :cond_1

    const/4 v10, 0x1

    shl-int/2addr v10, v4

    and-int/2addr v10, v7

    if-eqz v10, :cond_3

    sget-object v10, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    aget-object v6, v10, v4

    invoke-virtual {p0, v6}, Landroid/icu/impl/duration/PeriodBuilderImpl;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v8

    cmp-long v10, p1, v8

    if-gez v10, :cond_0

    if-eqz v5, :cond_3

    :cond_0
    move-wide/from16 v0, p1

    long-to-double v10, v0

    long-to-double v12, v8

    div-double v2, v10, v12

    if-nez v5, :cond_4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    cmpl-double v10, v2, v10

    if-ltz v10, :cond_2

    double-to-float v10, v2

    invoke-static {v10, v6}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v5

    :cond_1
    :goto_1
    return-object v5

    :cond_2
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v6}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    move-result-object v5

    sub-long p1, p1, v8

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v2, v10

    if-ltz v10, :cond_1

    double-to-float v10, v2

    invoke-virtual {v5, v10, v6}, Landroid/icu/impl/duration/Period;->and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v5

    goto :goto_1
.end method

.method protected withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 1

    invoke-static {p1}, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;->get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/OneOrTwoUnitBuilder;

    move-result-object v0

    return-object v0
.end method
