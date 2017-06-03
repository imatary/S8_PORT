.class public Landroid/icu/util/SimpleDateRule;
.super Ljava/lang/Object;
.source "SimpleDateRule.java"

# interfaces
.implements Landroid/icu/util/DateRule;


# static fields
.field private static gCalendar:Landroid/icu/util/GregorianCalendar;


# instance fields
.field private calendar:Landroid/icu/util/Calendar;

.field private dayOfMonth:I

.field private dayOfWeek:I

.field private month:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    sput-object v0, Landroid/icu/util/SimpleDateRule;->gCalendar:Landroid/icu/util/GregorianCalendar;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/icu/util/SimpleDateRule;->gCalendar:Landroid/icu/util/GregorianCalendar;

    iput-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    iput p1, p0, Landroid/icu/util/SimpleDateRule;->month:I

    iput p2, p0, Landroid/icu/util/SimpleDateRule;->dayOfMonth:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/icu/util/SimpleDateRule;->gCalendar:Landroid/icu/util/GregorianCalendar;

    iput-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    iput p1, p0, Landroid/icu/util/SimpleDateRule;->month:I

    iput p2, p0, Landroid/icu/util/SimpleDateRule;->dayOfMonth:I

    if-eqz p4, :cond_0

    :goto_0
    iput p3, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    return-void

    :cond_0
    neg-int p3, p3

    goto :goto_0
.end method

.method constructor <init>(IILandroid/icu/util/Calendar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/icu/util/SimpleDateRule;->gCalendar:Landroid/icu/util/GregorianCalendar;

    iput-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    iput p1, p0, Landroid/icu/util/SimpleDateRule;->month:I

    iput p2, p0, Landroid/icu/util/SimpleDateRule;->dayOfMonth:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    iput-object p3, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    return-void
.end method

.method private computeInYear(ILandroid/icu/util/Calendar;)Ljava/util/Date;
    .locals 4

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2}, Landroid/icu/util/Calendar;->clear()V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v2, 0x1

    invoke-virtual {p2, v2, p1}, Landroid/icu/util/Calendar;->set(II)V

    iget v2, p0, Landroid/icu/util/SimpleDateRule;->month:I

    const/4 v3, 0x2

    invoke-virtual {p2, v3, v2}, Landroid/icu/util/Calendar;->set(II)V

    iget v2, p0, Landroid/icu/util/SimpleDateRule;->dayOfMonth:I

    const/4 v3, 0x5

    invoke-virtual {p2, v3, v2}, Landroid/icu/util/Calendar;->set(II)V

    iget v2, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x7

    invoke-virtual {p2, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    const/4 v0, 0x0

    iget v2, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    if-lez v2, :cond_1

    iget v2, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x7

    rem-int/lit8 v0, v2, 0x7

    :goto_0
    const/4 v2, 0x5

    invoke-virtual {p2, v2, v0}, Landroid/icu/util/Calendar;->add(II)V

    :cond_0
    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p2

    return-object v2

    :cond_1
    :try_start_1
    iget v2, p0, Landroid/icu/util/SimpleDateRule;->dayOfWeek:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x7

    rem-int/lit8 v2, v2, 0x7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    neg-int v0, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p2

    throw v2
.end method

.method private doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iget v4, p0, Landroid/icu/util/SimpleDateRule;->month:I

    if-le v1, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    invoke-direct {p0, v3, v0}, Landroid/icu/util/SimpleDateRule;->computeInYear(ILandroid/icu/util/Calendar;)Ljava/util/Date;

    move-result-object v2

    iget v4, p0, Landroid/icu/util/SimpleDateRule;->month:I

    if-ne v1, v4, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v4, v0}, Landroid/icu/util/SimpleDateRule;->computeInYear(ILandroid/icu/util/Calendar;)Ljava/util/Date;

    move-result-object v2

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v2, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit v0

    return-object v5

    :cond_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v4

    monitor-exit v0

    throw v4
.end method


# virtual methods
.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/SimpleDateRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/icu/util/SimpleDateRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/SimpleDateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

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
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/icu/util/SimpleDateRule;->calendar:Landroid/icu/util/Calendar;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {p0, v3, v0}, Landroid/icu/util/SimpleDateRule;->computeInYear(ILandroid/icu/util/Calendar;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    monitor-exit v0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
.end method
