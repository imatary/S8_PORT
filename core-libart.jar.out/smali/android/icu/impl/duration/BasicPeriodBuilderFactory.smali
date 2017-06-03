.class Landroid/icu/impl/duration/BasicPeriodBuilderFactory;
.super Ljava/lang/Object;
.source "BasicPeriodBuilderFactory.java"

# interfaces
.implements Landroid/icu/impl/duration/PeriodBuilderFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    }
.end annotation


# static fields
.field private static final allBits:S = 0xffs


# instance fields
.field private ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

.field private settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;


# direct methods
.method static synthetic -get0(Landroid/icu/impl/duration/BasicPeriodBuilderFactory;)Landroid/icu/impl/duration/impl/PeriodFormatterDataService;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    return-object v0
.end method

.method constructor <init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    new-instance v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-direct {v0, p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory;)V

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-void
.end method

.method static approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J
    .locals 2

    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->approxDurations:[J

    iget-byte v1, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method private getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setInUse()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFixedUnitBuilder(Landroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/icu/impl/duration/FixedUnitBuilder;->get(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/FixedUnitBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getMultiUnitBuilder(I)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/icu/impl/duration/MultiUnitBuilder;->get(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/MultiUnitBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getOneOrTwoUnitBuilder()Landroid/icu/impl/duration/PeriodBuilder;
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;->get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/OneOrTwoUnitBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getSingleUnitBuilder()Landroid/icu/impl/duration/PeriodBuilder;
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->getSettings()Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/duration/SingleUnitBuilder;->get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/SingleUnitBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setAllowMilliseconds(Z)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowMilliseconds(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method

.method public setAllowZero(Z)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setAllowZero(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method

.method public setAvailableUnitRange(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 5

    const/4 v1, 0x0

    iget-byte v0, p2, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    :goto_0
    iget-byte v2, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    if-gt v0, v2, :cond_0

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v2, v1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setUnits(I)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method

.method public setMaxLimit(F)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setMaxLimit(F)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method

.method public setMinLimit(F)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setMinLimit(F)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 0

    return-object p0
.end method

.method public setUnitIsAvailable(Landroid/icu/impl/duration/TimeUnit;Z)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    iget-short v0, v1, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->uset:S

    if-eqz p2, :cond_0

    iget-byte v1, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v1, v0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setUnits(I)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0

    :cond_0
    iget-byte v1, p1, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    shl-int v1, v2, v1

    not-int v1, v1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public setWeeksAloneOnly(Z)Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setWeeksAloneOnly(Z)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    return-object p0
.end method
