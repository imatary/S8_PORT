.class public Landroid/icu/impl/RelativeDateFormat;
.super Landroid/icu/text/DateFormat;
.source "RelativeDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/RelativeDateFormat$URelativeString;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xfb59e5457c57c3bL


# instance fields
.field private transient capitalizationBrkIter:Landroid/icu/text/BreakIterator;

.field private capitalizationInfoIsSet:Z

.field private capitalizationOfRelativeUnitsForListOrMenu:Z

.field private capitalizationOfRelativeUnitsForStandAlone:Z

.field private combinedFormatHasDateAtStart:Z

.field private fCombinedFormat:Landroid/icu/text/MessageFormat;

.field private fDateFormat:Landroid/icu/text/DateFormat;

.field private fDatePattern:Ljava/lang/String;

.field fDateStyle:I

.field private fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

.field private transient fDates:[Landroid/icu/impl/RelativeDateFormat$URelativeString;

.field fLocale:Landroid/icu/util/ULocale;

.field private fTimeFormat:Landroid/icu/text/DateFormat;

.field private fTimePattern:Ljava/lang/String;

.field fTimeStyle:I


# direct methods
.method public constructor <init>(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/icu/text/DateFormat;-><init>()V

    iput-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    iput-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    iput-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    iput-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:[Landroid/icu/impl/RelativeDateFormat$URelativeString;

    iput-boolean v2, p0, Landroid/icu/impl/RelativeDateFormat;->combinedFormatHasDateAtStart:Z

    iput-boolean v2, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationInfoIsSet:Z

    iput-boolean v2, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    iput-boolean v2, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z

    iput-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    iput-object p4, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    iput-object p3, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    iput p1, p0, Landroid/icu/impl/RelativeDateFormat;->fTimeStyle:I

    iput p2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    iget v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    if-eq v2, v4, :cond_2

    iget v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    and-int/lit16 v1, v2, -0x81

    invoke-static {v1, p3}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    instance-of v2, v0, Landroid/icu/text/SimpleDateFormat;

    if-eqz v2, :cond_1

    nop

    nop

    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v2}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    iget v2, p0, Landroid/icu/impl/RelativeDateFormat;->fTimeStyle:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Landroid/icu/impl/RelativeDateFormat;->fTimeStyle:I

    and-int/lit16 v1, v2, -0x81

    invoke-static {v1, p3}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    instance-of v2, v0, Landroid/icu/text/SimpleDateFormat;

    if-eqz v2, :cond_0

    nop

    nop

    invoke-virtual {v0}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    invoke-direct {p0, v3, v2}, Landroid/icu/impl/RelativeDateFormat;->initializeCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    invoke-direct {p0}, Landroid/icu/impl/RelativeDateFormat;->loadDates()V

    iget-object v2, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    iget-object v3, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    invoke-direct {p0, v2, v3}, Landroid/icu/impl/RelativeDateFormat;->initializeCombinedFormat(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/text/MessageFormat;

    return-void

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t create SimpleDateFormat for date style"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget v2, p0, Landroid/icu/impl/RelativeDateFormat;->fTimeStyle:I

    and-int/lit16 v1, v2, -0x81

    invoke-static {v1, p3}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    instance-of v2, v0, Landroid/icu/text/SimpleDateFormat;

    if-eqz v2, :cond_3

    nop

    nop

    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v2}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t create SimpleDateFormat for time style"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static dayDifference(Landroid/icu/util/Calendar;)I
    .locals 7

    const/16 v6, 0x14

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Calendar;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clear()V

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    sub-int v0, v3, v4

    return v0
.end method

.method private getStringForDay(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:[Landroid/icu/impl/RelativeDateFormat$URelativeString;

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/icu/impl/RelativeDateFormat;->loadDates()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:[Landroid/icu/impl/RelativeDateFormat$URelativeString;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:[Landroid/icu/impl/RelativeDateFormat$URelativeString;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:[Landroid/icu/impl/RelativeDateFormat$URelativeString;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/icu/impl/RelativeDateFormat$URelativeString;->string:Ljava/lang/String;

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private initCapitalizationContextInfo(Landroid/icu/util/ULocale;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    invoke-static {v6, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    :try_start_0
    const-string/jumbo v6, "contextTransforms/relative"

    invoke-virtual {v2, v6}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v1

    array-length v6, v1

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    const/4 v6, 0x0

    aget v6, v1, v6

    if-eqz v6, :cond_1

    move v6, v4

    :goto_0
    iput-boolean v6, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    const/4 v6, 0x1

    aget v6, v1, v6

    if-eqz v6, :cond_2

    :goto_1
    iput-boolean v4, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v6, v5

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private initializeCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    return-object v0

    :cond_1
    invoke-static {p1, p2}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormat;->calendar:Landroid/icu/util/Calendar;

    goto :goto_0
.end method

.method private initializeCombinedFormat(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/text/MessageFormat;
    .locals 7

    const-string/jumbo v3, "{1} {0}"

    :try_start_0
    new-instance v0, Landroid/icu/impl/CalendarData;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p2, v5}, Landroid/icu/impl/CalendarData;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/CalendarData;->getDateTimePatterns()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    const/16 v6, 0x9

    if-lt v5, v6, :cond_1

    const/16 v2, 0x8

    array-length v5, v4

    const/16 v6, 0xd

    if-lt v5, v6, :cond_0

    iget v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    aget-object v3, v4, v2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string/jumbo v5, "{1}"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/icu/impl/RelativeDateFormat;->combinedFormatHasDateAtStart:Z

    new-instance v5, Landroid/icu/text/MessageFormat;

    invoke-direct {v5, v3, p2}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    iput-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fCombinedFormat:Landroid/icu/text/MessageFormat;

    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fCombinedFormat:Landroid/icu/text/MessageFormat;

    return-object v5

    :sswitch_0
    const/16 v2, 0x9

    goto :goto_0

    :sswitch_1
    const/16 v2, 0xa

    goto :goto_0

    :sswitch_2
    const/16 v2, 0xb

    goto :goto_0

    :sswitch_3
    const/16 v2, 0xc

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x80 -> :sswitch_0
        0x81 -> :sswitch_1
        0x82 -> :sswitch_2
        0x83 -> :sswitch_3
    .end sparse-switch
.end method

.method private declared-synchronized loadDates()V
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string/jumbo v8, "android/icu/impl/data/icudt56b"

    iget-object v9, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    invoke-static {v8, v9}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v8, "fields/day/relative"

    invoke-virtual {v4, v8}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v5

    new-instance v0, Ljava/util/TreeSet;

    new-instance v8, Landroid/icu/impl/RelativeDateFormat$1;

    invoke-direct {v8, p0}, Landroid/icu/impl/RelativeDateFormat$1;-><init>(Landroid/icu/impl/RelativeDateFormat;)V

    invoke-direct {v0, v8}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Landroid/icu/impl/RelativeDateFormat$URelativeString;

    invoke-direct {v6, v2, v7}, Landroid/icu/impl/RelativeDateFormat$URelativeString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_0
    const/4 v8, 0x0

    :try_start_1
    new-array v8, v8, [Landroid/icu/impl/RelativeDateFormat$URelativeString;

    invoke-interface {v0, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/icu/impl/RelativeDateFormat$URelativeString;

    iput-object v8, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:[Landroid/icu/impl/RelativeDateFormat$URelativeString;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v5}, Landroid/icu/text/DateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v0

    iget v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    invoke-static {p1}, Landroid/icu/impl/RelativeDateFormat;->dayDifference(Landroid/icu/util/Calendar;)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/icu/impl/RelativeDateFormat;->getStringForDay(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    if-eqz v5, :cond_6

    if-eqz v4, :cond_a

    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fCombinedFormat:Landroid/icu/text/MessageFormat;

    if-nez v5, :cond_9

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v4, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-eq v0, v5, :cond_3

    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne v0, v5, :cond_2

    iget-boolean v5, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    if-nez v5, :cond_3

    :cond_2
    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne v0, v5, :cond_5

    iget-boolean v5, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z

    if-eqz v5, :cond_5

    :cond_3
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    invoke-static {v5}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v5

    iput-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    :cond_4
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    iget-object v6, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    const/16 v7, 0x300

    invoke-static {v5, v4, v6, v7}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v4

    :cond_5
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    sget-object v6, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v5, v6}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    :cond_6
    :goto_0
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    if-eqz v5, :cond_f

    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    if-nez v5, :cond_7

    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    if-eqz v5, :cond_f

    :cond_7
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    if-nez v5, :cond_b

    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    iget-object v6, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v5, p1, p2, p3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    :cond_8
    :goto_1
    return-object p2

    :cond_9
    iget-boolean v5, p0, Landroid/icu/impl/RelativeDateFormat;->combinedFormatHasDateAtStart:Z

    if-nez v5, :cond_1

    :cond_a
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v5, v0}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    goto :goto_0

    :cond_b
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    if-nez v5, :cond_d

    if-eqz v4, :cond_c

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_c
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    iget-object v6, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v5, p1, p2, p3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_d
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    if-eqz v4, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    const-string/jumbo v7, "\'\'"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_e
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v5, ""

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fCombinedFormat:Landroid/icu/text/MessageFormat;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v2, v6, v7

    new-instance v7, Ljava/text/FieldPosition;

    invoke-direct {v7, v8}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v5, v6, v1, v7}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v5, p1, p2, p3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_f
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateFormat:Landroid/icu/text/DateFormat;

    if-eqz v5, :cond_8

    if-eqz v4, :cond_10

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_10
    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fDateFormat:Landroid/icu/text/DateFormat;

    invoke-virtual {v5, p1, p2, p3}, Landroid/icu/text/DateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method

.method public parse(Ljava/lang/String;Landroid/icu/util/Calendar;Ljava/text/ParsePosition;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Relative Date parse is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContext(Landroid/icu/text/DisplayContext;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    iget-boolean v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationInfoIsSet:Z

    if-nez v0, :cond_1

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    invoke-direct {p0, v0}, Landroid/icu/impl/RelativeDateFormat;->initCapitalizationContextInfo(Landroid/icu/util/ULocale;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationInfoIsSet:Z

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_4

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-eq p1, v0, :cond_3

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    :cond_4
    return-void
.end method
