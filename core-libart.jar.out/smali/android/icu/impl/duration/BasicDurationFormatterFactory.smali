.class Landroid/icu/impl/duration/BasicDurationFormatterFactory;
.super Ljava/lang/Object;
.source "BasicDurationFormatterFactory.java"

# interfaces
.implements Landroid/icu/impl/duration/DurationFormatterFactory;


# instance fields
.field private builder:Landroid/icu/impl/duration/PeriodBuilder;

.field private f:Landroid/icu/impl/duration/BasicDurationFormatter;

.field private fallback:Landroid/icu/impl/duration/DateFormatter;

.field private fallbackLimit:J

.field private formatter:Landroid/icu/impl/duration/PeriodFormatter;

.field private localeName:Ljava/lang/String;

.field private ps:Landroid/icu/impl/duration/BasicPeriodFormatterService;

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/BasicPeriodFormatterService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->ps:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method protected createFormatter()Landroid/icu/impl/duration/BasicDurationFormatter;
    .locals 8

    new-instance v0, Landroid/icu/impl/duration/BasicDurationFormatter;

    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    iget-object v2, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    iget-object v3, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    iget-wide v4, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    iget-object v6, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    iget-object v7, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    invoke-direct/range {v0 .. v7}, Landroid/icu/impl/duration/BasicDurationFormatter;-><init>(Landroid/icu/impl/duration/PeriodFormatter;Landroid/icu/impl/duration/PeriodBuilder;Landroid/icu/impl/duration/DateFormatter;JLjava/lang/String;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public getFallback()Landroid/icu/impl/duration/DateFormatter;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    return-object v0
.end method

.method public getFallbackLimit()J
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    goto :goto_0
.end method

.method public getFormatter()Landroid/icu/impl/duration/DurationFormatter;
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->f:Landroid/icu/impl/duration/BasicDurationFormatter;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/DateFormatter;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DateFormatter;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/DateFormatter;->withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/DateFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->getPeriodFormatter()Landroid/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->getPeriodBuilder()Landroid/icu/impl/duration/PeriodBuilder;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->createFormatter()Landroid/icu/impl/duration/BasicDurationFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->f:Landroid/icu/impl/duration/BasicDurationFormatter;

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->f:Landroid/icu/impl/duration/BasicDurationFormatter;

    return-object v0
.end method

.method public getLocaleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodBuilder()Landroid/icu/impl/duration/PeriodBuilder;
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->ps:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->newPeriodBuilderFactory()Landroid/icu/impl/duration/PeriodBuilderFactory;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodBuilderFactory;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodBuilderFactory;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodBuilderFactory;->setTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/PeriodBuilderFactory;

    move-result-object v0

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodBuilderFactory;->getSingleUnitBuilder()Landroid/icu/impl/duration/PeriodBuilder;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    return-object v0
.end method

.method public getPeriodFormatter()Landroid/icu/impl/duration/PeriodFormatter;
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->ps:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodFormatterFactory;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterFactory;->getFormatter()Landroid/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method protected reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->f:Landroid/icu/impl/duration/BasicDurationFormatter;

    return-void
.end method

.method public setFallback(Landroid/icu/impl/duration/DateFormatter;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    iget-object v2, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_1
    return-object p0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public setFallbackLimit(J)Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    iget-wide v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    iput-wide p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_1
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodBuilder;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodBuilder;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodFormatter;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    :cond_1
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_2
    return-object p0
.end method

.method public setPeriodBuilder(Landroid/icu/impl/duration/PeriodBuilder;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_0
    return-object p0
.end method

.method public setPeriodFormatter(Landroid/icu/impl/duration/PeriodFormatter;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_0
    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodBuilder;->withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/PeriodBuilder;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_1
    return-object p0
.end method
