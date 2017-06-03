.class Landroid/icu/util/EasterRule;
.super Ljava/lang/Object;
.source "EasterHoliday.java"

# interfaces
.implements Landroid/icu/util/DateRule;


# static fields
.field private static gregorian:Landroid/icu/util/GregorianCalendar;

.field private static orthodox:Landroid/icu/util/GregorianCalendar;


# instance fields
.field private calendar:Landroid/icu/util/GregorianCalendar;

.field private daysAfterEaster:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    sput-object v0, Landroid/icu/util/EasterRule;->gregorian:Landroid/icu/util/GregorianCalendar;

    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    sput-object v0, Landroid/icu/util/EasterRule;->orthodox:Landroid/icu/util/GregorianCalendar;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/icu/util/EasterRule;->gregorian:Landroid/icu/util/GregorianCalendar;

    iput-object v0, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    iput p1, p0, Landroid/icu/util/EasterRule;->daysAfterEaster:I

    if-eqz p2, :cond_0

    sget-object v0, Landroid/icu/util/EasterRule;->orthodox:Landroid/icu/util/GregorianCalendar;

    new-instance v1, Ljava/util/Date;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/icu/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    sget-object v0, Landroid/icu/util/EasterRule;->orthodox:Landroid/icu/util/GregorianCalendar;

    iput-object v0, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    :cond_0
    return-void
.end method

.method private computeInYear(Ljava/util/Date;Landroid/icu/util/GregorianCalendar;)Ljava/util/Date;
    .locals 13

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    :cond_0
    monitor-enter p2

    :try_start_0
    invoke-virtual {p2, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/icu/util/Calendar;->get(I)I

    move-result v8

    rem-int/lit8 v2, v8, 0x13

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {p2}, Landroid/icu/util/GregorianCalendar;->getGregorianChange()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v9

    if-eqz v9, :cond_1

    div-int/lit8 v0, v8, 0x64

    div-int/lit8 v9, v0, 0x4

    sub-int v9, v0, v9

    mul-int/lit8 v10, v0, 0x8

    add-int/lit8 v10, v10, 0xd

    div-int/lit8 v10, v10, 0x19

    sub-int/2addr v9, v10

    mul-int/lit8 v10, v2, 0x13

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0xf

    rem-int/lit8 v3, v9, 0x1e

    div-int/lit8 v9, v3, 0x1c

    div-int/lit8 v10, v3, 0x1c

    add-int/lit8 v11, v3, 0x1

    const/16 v12, 0x1d

    div-int v11, v12, v11

    mul-int/2addr v10, v11

    rsub-int/lit8 v11, v2, 0x15

    div-int/lit8 v11, v11, 0xb

    mul-int/2addr v10, v11

    rsub-int/lit8 v10, v10, 0x1

    mul-int/2addr v9, v10

    sub-int v4, v3, v9

    div-int/lit8 v9, v8, 0x4

    add-int/2addr v9, v8

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, 0x2

    sub-int/2addr v9, v0

    div-int/lit8 v10, v0, 0x4

    add-int/2addr v9, v10

    rem-int/lit8 v5, v9, 0x7

    :goto_0
    sub-int v6, v4, v5

    add-int/lit8 v9, v6, 0x28

    div-int/lit8 v9, v9, 0x2c

    add-int/lit8 v7, v9, 0x3

    add-int/lit8 v9, v6, 0x1c

    div-int/lit8 v10, v7, 0x4

    mul-int/lit8 v10, v10, 0x1f

    sub-int v1, v9, v10

    invoke-virtual {p2}, Landroid/icu/util/Calendar;->clear()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v9, 0x1

    invoke-virtual {p2, v9, v8}, Landroid/icu/util/Calendar;->set(II)V

    add-int/lit8 v9, v7, -0x1

    const/4 v10, 0x2

    invoke-virtual {p2, v10, v9}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v9, 0x5

    invoke-virtual {p2, v9, v1}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    iget v9, p0, Landroid/icu/util/EasterRule;->daysAfterEaster:I

    const/4 v10, 0x5

    invoke-virtual {p2, v10, v9}, Landroid/icu/util/Calendar;->add(II)V

    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    monitor-exit p2

    return-object v9

    :cond_1
    mul-int/lit8 v9, v2, 0x13

    add-int/lit8 v9, v9, 0xf

    :try_start_1
    rem-int/lit8 v4, v9, 0x1e

    div-int/lit8 v9, v8, 0x4

    add-int/2addr v9, v8

    add-int/2addr v9, v4

    rem-int/lit8 v5, v9, 0x7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p2

    throw v9
.end method

.method private doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-direct {p0, p1, v1}, Landroid/icu/util/EasterRule;->computeInYear(Ljava/util/Date;Landroid/icu/util/GregorianCalendar;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-virtual {v1, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->get(I)I

    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/icu/util/Calendar;->add(II)V

    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-direct {p0, v1, v3}, Landroid/icu/util/EasterRule;->computeInYear(Ljava/util/Date;Landroid/icu/util/GregorianCalendar;)Ljava/util/Date;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    monitor-exit v2

    return-object v0

    :cond_2
    monitor-exit v2

    return-object v5

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/EasterRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/icu/util/EasterRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/EasterRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOn(Ljava/util/Date;)Z
    .locals 5

    iget-object v2, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-virtual {v1, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    iget-object v3, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-virtual {v3}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-direct {p0, v3, v4}, Landroid/icu/util/EasterRule;->computeInYear(Ljava/util/Date;Landroid/icu/util/GregorianCalendar;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->get(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
