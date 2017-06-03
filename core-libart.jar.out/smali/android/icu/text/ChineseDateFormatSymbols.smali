.class public Landroid/icu/text/ChineseDateFormatSymbols;
.super Landroid/icu/text/DateFormatSymbols;
.source "ChineseDateFormatSymbols.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final serialVersionUID:J = 0x5ec14695eb6891faL


# instance fields
.field isLeapMonth:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/ChineseDateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/Calendar;Ljava/util/Locale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/icu/util/ChineseCalendar;

    invoke-direct {p0, v0, p1}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/icu/util/ChineseCalendar;

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private initializeIsLeapMonth()V
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    iget-object v0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string/jumbo v2, "{0}"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    aput-object v0, v1, v2

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public getLeapMonth(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method initializeData(Landroid/icu/text/DateFormatSymbols;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/text/DateFormatSymbols;)V

    instance-of v0, p1, Landroid/icu/text/ChineseDateFormatSymbols;

    if-eqz v0, :cond_0

    nop

    nop

    iget-object v0, p1, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/ChineseDateFormatSymbols;->initializeIsLeapMonth()V

    goto :goto_0
.end method

.method protected initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/CalendarData;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/CalendarData;)V

    invoke-direct {p0}, Landroid/icu/text/ChineseDateFormatSymbols;->initializeIsLeapMonth()V

    return-void
.end method
