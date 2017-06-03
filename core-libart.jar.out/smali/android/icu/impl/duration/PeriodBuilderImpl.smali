.class abstract Landroid/icu/impl/duration/PeriodBuilderImpl;
.super Ljava/lang/Object;
.source "BasicPeriodBuilderFactory.java"

# interfaces
.implements Landroid/icu/impl/duration/PeriodBuilder;


# instance fields
.field protected settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;


# direct methods
.method protected constructor <init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/duration/PeriodBuilderImpl;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-void
.end method


# virtual methods
.method public approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J
    .locals 2

    invoke-static {p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public create(J)Landroid/icu/impl/duration/Period;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/impl/duration/PeriodBuilderImpl;->createWithReferenceDate(JJ)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method public createWithReferenceDate(JJ)Landroid/icu/impl/duration/Period;
    .locals 7

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_2

    const/4 v6, 0x1

    :goto_0
    if-eqz v6, :cond_0

    neg-long p1, p1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/duration/PeriodBuilderImpl;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v1, p1, p2, v6}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->createLimited(JZ)Landroid/icu/impl/duration/Period;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/duration/PeriodBuilderImpl;->handleCreate(JJZ)Landroid/icu/impl/duration/Period;

    move-result-object v0

    if-nez v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Landroid/icu/impl/duration/PeriodBuilderImpl;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v2}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveMinUnit()Landroid/icu/impl/duration/TimeUnit;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/icu/impl/duration/Period;->lessThan(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected abstract handleCreate(JJZ)Landroid/icu/impl/duration/Period;
.end method

.method public withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 2

    iget-object v1, p0, Landroid/icu/impl/duration/PeriodBuilderImpl;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v1, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/duration/PeriodBuilderImpl;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/icu/impl/duration/PeriodBuilderImpl;->withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;

    move-result-object v1

    return-object v1

    :cond_0
    return-object p0
.end method

.method protected abstract withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 0

    return-object p0
.end method
