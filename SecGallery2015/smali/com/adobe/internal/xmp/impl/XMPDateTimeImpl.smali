.class public Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;
.super Ljava/lang/Object;
.source "XMPDateTimeImpl.java"

# interfaces
.implements Lcom/adobe/internal/xmp/XMPDateTime;


# instance fields
.field private day:I

.field private hasDate:Z

.field private hasTime:Z

.field private hasTimeZone:Z

.field private hour:I

.field private minute:I

.field private month:I

.field private nanoSeconds:I

.field private second:I

.field private timeZone:Ljava/util/TimeZone;

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->year:I

    iput v1, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->month:I

    iput v1, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->day:I

    iput v1, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hour:I

    iput v1, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->minute:I

    iput v1, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->second:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    iput-boolean v1, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasDate:Z

    iput-boolean v1, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    iput-boolean v1, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasTimeZone:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->year:I

    iput v4, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->month:I

    iput v4, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->day:I

    iput v4, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hour:I

    iput v4, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->minute:I

    iput v4, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->second:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    iput-boolean v4, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasDate:Z

    iput-boolean v4, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    iput-boolean v4, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasTimeZone:Z

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    check-cast v1, Ljava/util/GregorianCalendar;

    new-instance v3, Ljava/util/Date;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->year:I

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->month:I

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->day:I

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hour:I

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->minute:I

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->second:I

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const v4, 0xf4240

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    iput-boolean v6, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasTimeZone:Z

    iput-boolean v6, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    iput-boolean v6, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasDate:Z

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 6

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object v2, p1

    check-cast v2, Lcom/adobe/internal/xmp/XMPDateTime;

    invoke-interface {v2}, Lcom/adobe/internal/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v0, v4, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    long-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    check-cast p1, Lcom/adobe/internal/xmp/XMPDateTime;

    invoke-interface {p1}, Lcom/adobe/internal/xmp/XMPDateTime;->getNanoSecond()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v0, v2

    long-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 4

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    new-instance v1, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    iget-boolean v1, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasTimeZone:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->year:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->month:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v1, 0xb

    iget v2, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v1, 0xc

    iget v2, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v1, 0xd

    iget v2, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->second:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v1, 0xe

    iget v2, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    return-object v0
.end method

.method public getDay()I
    .locals 1

    iget v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->day:I

    return v0
.end method

.method public getHour()I
    .locals 1

    iget v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hour:I

    return v0
.end method

.method public getISO8601String()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/adobe/internal/xmp/impl/ISO8601Converter;->render(Lcom/adobe/internal/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    iget v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->minute:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->month:I

    return v0
.end method

.method public getNanoSecond()I
    .locals 1

    iget v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    iget v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->second:I

    return v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->year:I

    return v0
.end method

.method public hasDate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasDate:Z

    return v0
.end method

.method public hasTime()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    return v0
.end method

.method public hasTimeZone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasTimeZone:Z

    return v0
.end method

.method public setDay(I)V
    .locals 2

    const/16 v1, 0x1f

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    iput v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->day:I

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasDate:Z

    return-void

    :cond_0
    if-le p1, v1, :cond_1

    iput v1, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->day:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->day:I

    goto :goto_0
.end method

.method public setHour(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hour:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    return-void
.end method

.method public setMinute(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->minute:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    return-void
.end method

.method public setMonth(I)V
    .locals 2

    const/16 v1, 0xc

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    iput v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->month:I

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasDate:Z

    return-void

    :cond_0
    if-le p1, v1, :cond_1

    iput v1, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->month:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->month:I

    goto :goto_0
.end method

.method public setNanoSecond(I)V
    .locals 1

    iput p1, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    return-void
.end method

.method public setSecond(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->second:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    iput-boolean v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasTime:Z

    iput-boolean v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasTimeZone:Z

    return-void
.end method

.method public setYear(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x270f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->year:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->hasDate:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;->getISO8601String()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
