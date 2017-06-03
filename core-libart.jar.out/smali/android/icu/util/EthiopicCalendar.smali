.class public final Landroid/icu/util/EthiopicCalendar;
.super Landroid/icu/util/CECalendar;
.source "EthiopicCalendar.java"


# static fields
.field private static final AMETE_ALEM:I = 0x0

.field private static final AMETE_ALEM_ERA:I = 0x1

.field private static final AMETE_MIHRET:I = 0x1

.field private static final AMETE_MIHRET_DELTA:I = 0x157c

.field private static final AMETE_MIHRET_ERA:I = 0x0

.field public static final GENBOT:I = 0x8

.field public static final HAMLE:I = 0xa

.field public static final HEDAR:I = 0x2

.field private static final JD_EPOCH_OFFSET_AMETE_MIHRET:I = 0x1a4dd0

.field public static final MEGABIT:I = 0x6

.field public static final MESKEREM:I = 0x0

.field public static final MIAZIA:I = 0x7

.field public static final NEHASSE:I = 0xb

.field public static final PAGUMEN:I = 0xc

.field public static final SENE:I = 0x9

.field public static final TAHSAS:I = 0x3

.field public static final TEKEMT:I = 0x1

.field public static final TER:I = 0x4

.field public static final YEKATIT:I = 0x5

.field private static final serialVersionUID:J = -0x21d746fbfcf8d998L


# instance fields
.field private eraType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/CECalendar;-><init>(III)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Landroid/icu/util/CECalendar;-><init>(IIIIII)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    invoke-direct {p0, p2}, Landroid/icu/util/EthiopicCalendar;->setCalcTypeForLocale(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 1

    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Ljava/util/Date;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public static EthiopicToJD(JII)I
    .locals 2

    const v0, 0x1a4dd0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/icu/util/EthiopicCalendar;->ceToJD(JIII)I

    move-result v0

    return v0
.end method

.method private setCalcTypeForLocale(Landroid/icu/util/ULocale;)V
    .locals 2

    invoke-static {p1}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ethiopic-amete-alem"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/icu/util/EthiopicCalendar;->setAmeteAlemEra(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/icu/util/EthiopicCalendar;->setAmeteAlemEra(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getJDEpochOffset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x1a4dd0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ethiopic-amete-alem"

    return-object v0

    :cond_0
    const-string/jumbo v0, "ethiopic"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x3

    new-array v1, v3, [I

    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->getJDEpochOffset()I

    move-result v3

    invoke-static {p1, v3, v1}, Landroid/icu/util/EthiopicCalendar;->jdToCE(II[I)V

    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    aget v3, v1, v5

    add-int/lit16 v2, v3, 0x157c

    :goto_0
    aget v3, v1, v5

    const/16 v4, 0x13

    invoke-virtual {p0, v4, v3}, Landroid/icu/util/Calendar;->internalSet(II)V

    invoke-virtual {p0, v5, v0}, Landroid/icu/util/Calendar;->internalSet(II)V

    invoke-virtual {p0, v6, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    aget v3, v1, v6

    invoke-virtual {p0, v7, v3}, Landroid/icu/util/Calendar;->internalSet(II)V

    aget v3, v1, v7

    const/4 v4, 0x5

    invoke-virtual {p0, v4, v3}, Landroid/icu/util/Calendar;->internalSet(II)V

    aget v3, v1, v6

    mul-int/lit8 v3, v3, 0x1e

    aget v4, v1, v7

    add-int/2addr v3, v4

    const/4 v4, 0x6

    invoke-virtual {p0, v4, v3}, Landroid/icu/util/Calendar;->internalSet(II)V

    return-void

    :cond_0
    aget v3, v1, v5

    if-lez v3, :cond_1

    const/4 v0, 0x1

    aget v2, v1, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    aget v3, v1, v5

    add-int/lit16 v2, v3, 0x157c

    goto :goto_0
.end method

.method protected handleGetExtendedYear()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v4, 0x13

    const/4 v3, 0x1

    invoke-virtual {p0, v4, v3}, Landroid/icu/util/Calendar;->newerField(II)I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {p0, v4, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x157d

    invoke-virtual {p0, v3, v2}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v2

    add-int/lit16 v1, v2, -0x157c

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {p0, v3, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v2

    add-int/lit16 v1, v2, -0x157c

    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/icu/util/CECalendar;->handleGetLimit(II)I

    move-result v0

    return v0
.end method

.method public isAmeteAlemEra()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAmeteAlemEra(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
