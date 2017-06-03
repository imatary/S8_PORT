.class Landroid/icu/impl/duration/MultiUnitBuilder;
.super Landroid/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# instance fields
.field private nPeriods:I


# direct methods
.method constructor <init>(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/icu/impl/duration/PeriodBuilderImpl;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    iput p1, p0, Landroid/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    return-void
.end method

.method public static get(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/MultiUnitBuilder;
    .locals 1

    const/4 v0, 0x0

    if-lez p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/icu/impl/duration/MultiUnitBuilder;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/duration/MultiUnitBuilder;-><init>(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected handleCreate(JJZ)Landroid/icu/impl/duration/Period;
    .locals 17

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/duration/PeriodBuilderImpl;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v11}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result v10

    const/4 v4, 0x0

    :goto_0
    sget-object v11, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length v11, v11

    if-ge v4, v11, :cond_0

    const/4 v11, 0x1

    shl-int/2addr v11, v4

    and-int/2addr v11, v10

    if-eqz v11, :cond_4

    sget-object v11, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    aget-object v7, v11, v4

    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    if-ne v5, v11, :cond_1

    :cond_0
    return-object v6

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/icu/impl/duration/PeriodBuilderImpl;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v8

    cmp-long v11, p1, v8

    if-gez v11, :cond_2

    if-lez v5, :cond_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v0, p1

    long-to-double v12, v0

    long-to-double v14, v8

    div-double v2, v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    if-ge v5, v11, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    long-to-double v12, v8

    mul-double/2addr v12, v2

    double-to-long v12, v12

    sub-long p1, p1, v12

    :cond_3
    if-nez v6, :cond_5

    double-to-float v11, v2

    invoke-static {v11, v7}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    move-result-object v6

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    double-to-float v11, v2

    invoke-virtual {v6, v11, v7}, Landroid/icu/impl/duration/Period;->and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v6

    goto :goto_1
.end method

.method protected withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 1

    iget v0, p0, Landroid/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    invoke-static {v0, p1}, Landroid/icu/impl/duration/MultiUnitBuilder;->get(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/MultiUnitBuilder;

    move-result-object v0

    return-object v0
.end method
