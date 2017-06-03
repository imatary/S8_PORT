.class Landroid/icu/impl/duration/FixedUnitBuilder;
.super Landroid/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# instance fields
.field private unit:Landroid/icu/impl/duration/TimeUnit;


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/icu/impl/duration/PeriodBuilderImpl;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    iput-object p1, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    return-void
.end method

.method public static get(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/FixedUnitBuilder;
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result v0

    iget-byte v1, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/icu/impl/duration/FixedUnitBuilder;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/duration/FixedUnitBuilder;-><init>(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-object v0

    :cond_0
    return-object v3
.end method


# virtual methods
.method protected handleCreate(JJZ)Landroid/icu/impl/duration/Period;
    .locals 7

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    invoke-virtual {p0, v2}, Landroid/icu/impl/duration/PeriodBuilderImpl;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v0

    long-to-double v2, p1

    long-to-double v4, v0

    div-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    invoke-static {v2, v3}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    move-result-object v2

    return-object v2
.end method

.method protected withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    invoke-static {v0, p1}, Landroid/icu/impl/duration/FixedUnitBuilder;->get(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/FixedUnitBuilder;

    move-result-object v0

    return-object v0
.end method
