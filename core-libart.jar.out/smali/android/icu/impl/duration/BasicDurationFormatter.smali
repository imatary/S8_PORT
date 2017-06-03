.class Landroid/icu/impl/duration/BasicDurationFormatter;
.super Ljava/lang/Object;
.source "BasicDurationFormatter.java"

# interfaces
.implements Landroid/icu/impl/duration/DurationFormatter;


# instance fields
.field private builder:Landroid/icu/impl/duration/PeriodBuilder;

.field private fallback:Landroid/icu/impl/duration/DateFormatter;

.field private fallbackLimit:J

.field private formatter:Landroid/icu/impl/duration/PeriodFormatter;

.field private localeName:Ljava/lang/String;

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Landroid/icu/impl/duration/PeriodFormatter;Landroid/icu/impl/duration/PeriodBuilder;Landroid/icu/impl/duration/DateFormatter;J)V
    .locals 4

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    iput-object p2, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    iput-object p3, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    cmp-long v2, p4, v0

    if-gez v2, :cond_0

    move-wide p4, v0

    :cond_0
    iput-wide p4, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    return-void
.end method

.method protected constructor <init>(Landroid/icu/impl/duration/PeriodFormatter;Landroid/icu/impl/duration/PeriodBuilder;Landroid/icu/impl/duration/DateFormatter;JLjava/lang/String;Ljava/util/TimeZone;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    iput-object p2, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    iput-object p3, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    iput-wide p4, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    iput-object p6, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->localeName:Ljava/lang/String;

    iput-object p7, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->timeZone:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method protected doBuild(JJ)Landroid/icu/impl/duration/Period;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/icu/impl/duration/PeriodBuilder;->createWithReferenceDate(JJ)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method protected doFallback(JJ)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    add-long v2, p3, p1

    invoke-interface {v0, v2, v3}, Landroid/icu/impl/duration/DateFormatter;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v4
.end method

.method protected doFormat(Landroid/icu/impl/duration/Period;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/icu/impl/duration/Period;->isSet()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "period is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodFormatter;->format(Landroid/icu/impl/duration/Period;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDurationFrom(JJ)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/impl/duration/BasicDurationFormatter;->doFallback(JJ)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/impl/duration/BasicDurationFormatter;->doBuild(JJ)Landroid/icu/impl/duration/Period;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/duration/BasicDurationFormatter;->doFormat(Landroid/icu/impl/duration/Period;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public formatDurationFromNow(J)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/impl/duration/BasicDurationFormatter;->formatDurationFrom(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/icu/impl/duration/BasicDurationFormatter;->formatDurationFrom(JJ)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DurationFormatter;
    .locals 8

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->localeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodFormatter;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatter;

    move-result-object v1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodBuilder;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodBuilder;

    move-result-object v2

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    new-instance v0, Landroid/icu/impl/duration/BasicDurationFormatter;

    iget-wide v4, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    iget-object v7, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->timeZone:Ljava/util/TimeZone;

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/icu/impl/duration/BasicDurationFormatter;-><init>(Landroid/icu/impl/duration/PeriodFormatter;Landroid/icu/impl/duration/PeriodBuilder;Landroid/icu/impl/duration/DateFormatter;JLjava/lang/String;Ljava/util/TimeZone;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/DateFormatter;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DateFormatter;

    move-result-object v3

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/DurationFormatter;
    .locals 8

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodBuilder;->withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/PeriodBuilder;

    move-result-object v2

    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    new-instance v0, Landroid/icu/impl/duration/BasicDurationFormatter;

    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    iget-wide v4, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallbackLimit:J

    iget-object v6, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->localeName:Ljava/lang/String;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/icu/impl/duration/BasicDurationFormatter;-><init>(Landroid/icu/impl/duration/PeriodFormatter;Landroid/icu/impl/duration/PeriodBuilder;Landroid/icu/impl/duration/DateFormatter;JLjava/lang/String;Ljava/util/TimeZone;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatter;->fallback:Landroid/icu/impl/duration/DateFormatter;

    invoke-interface {v0, p1}, Landroid/icu/impl/duration/DateFormatter;->withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/DateFormatter;

    move-result-object v3

    goto :goto_0

    :cond_1
    return-object p0
.end method
