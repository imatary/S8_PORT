.class Landroid/icu/impl/duration/SingleUnitBuilder;
.super Landroid/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/impl/duration/PeriodBuilderImpl;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-void
.end method

.method public static get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/SingleUnitBuilder;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/icu/impl/duration/SingleUnitBuilder;

    invoke-direct {v0, p0}, Landroid/icu/impl/duration/SingleUnitBuilder;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-object v0
.end method


# virtual methods
.method protected handleCreate(JJZ)Landroid/icu/impl/duration/Period;
    .locals 13

    iget-object v7, p0, Landroid/icu/impl/duration/PeriodBuilderImpl;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v7}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result v6

    const/4 v2, 0x0

    :goto_0
    sget-object v7, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length v7, v7

    if-ge v2, v7, :cond_1

    const/4 v7, 0x1

    shl-int/2addr v7, v2

    and-int/2addr v7, v6

    if-eqz v7, :cond_0

    sget-object v7, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    aget-object v3, v7, v2

    invoke-virtual {p0, v3}, Landroid/icu/impl/duration/PeriodBuilderImpl;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v4

    cmp-long v7, p1, v4

    if-ltz v7, :cond_0

    long-to-double v8, p1

    long-to-double v10, v4

    div-double/2addr v8, v10

    double-to-float v7, v8

    invoke-static {v7, v3}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    move-result-object v7

    return-object v7

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    return-object v7
.end method

.method protected withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 1

    invoke-static {p1}, Landroid/icu/impl/duration/SingleUnitBuilder;->get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/SingleUnitBuilder;

    move-result-object v0

    return-object v0
.end method
