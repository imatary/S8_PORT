.class public Landroid/icu/impl/CalendarAstronomer;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/CalendarAstronomer$AngleFunc;,
        Landroid/icu/impl/CalendarAstronomer$CoordFunc;,
        Landroid/icu/impl/CalendarAstronomer$Ecliptic;,
        Landroid/icu/impl/CalendarAstronomer$Equatorial;,
        Landroid/icu/impl/CalendarAstronomer$Horizon;,
        Landroid/icu/impl/CalendarAstronomer$MoonAge;,
        Landroid/icu/impl/CalendarAstronomer$SolarLongitude;
    }
.end annotation


# static fields
.field public static final AUTUMN_EQUINOX:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

.field public static final DAY_MS:J = 0x5265c00L

.field private static final DEG_RAD:D = 0.017453292519943295

.field static final EPOCH_2000_MS:J = 0xdc65a95000L

.field public static final FIRST_QUARTER:Landroid/icu/impl/CalendarAstronomer$MoonAge;

.field public static final FULL_MOON:Landroid/icu/impl/CalendarAstronomer$MoonAge;

.field public static final HOUR_MS:I = 0x36ee80

.field private static final INVALID:D = 4.9E-324

.field static final JD_EPOCH:D = 2447891.5

.field public static final JULIAN_EPOCH_MS:J = -0xbfc83e532200L

.field public static final LAST_QUARTER:Landroid/icu/impl/CalendarAstronomer$MoonAge;

.field public static final MINUTE_MS:I = 0xea60

.field public static final NEW_MOON:Landroid/icu/impl/CalendarAstronomer$MoonAge;

.field private static final PI:D = 3.141592653589793

.field private static final PI2:D = 6.283185307179586

.field private static final RAD_DEG:D = 57.29577951308232

.field private static final RAD_HOUR:D = 3.819718634205488

.field public static final SECOND_MS:I = 0x3e8

.field public static final SIDEREAL_DAY:D = 23.93446960027

.field public static final SIDEREAL_MONTH:D = 27.32166

.field public static final SIDEREAL_YEAR:D = 365.25636

.field public static final SOLAR_DAY:D = 24.065709816

.field public static final SUMMER_SOLSTICE:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

.field static final SUN_E:D = 0.016713

.field static final SUN_ETA_G:D = 4.87650757829735

.field static final SUN_OMEGA_G:D = 4.935239984568769

.field public static final SYNODIC_MONTH:D = 29.530588853

.field public static final TROPICAL_YEAR:D = 365.242191

.field public static final VERNAL_EQUINOX:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

.field public static final WINTER_SOLSTICE:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

.field static final moonA:D = 384401.0

.field static final moonE:D = 0.0549

.field static final moonI:D = 0.08980357792017056

.field static final moonL0:D = 5.556284436750021

.field static final moonN0:D = 5.559050068029439

.field static final moonP0:D = 0.6342598060246725

.field static final moonPi:D = 0.016592845198710092

.field static final moonT0:D = 0.009042550854582622


# instance fields
.field private transient eclipObliquity:D

.field private fGmtOffset:J

.field private fLatitude:D

.field private fLongitude:D

.field private transient julianCentury:D

.field private transient julianDay:D

.field private transient meanAnomalySun:D

.field private transient moonEclipLong:D

.field private transient moonLongitude:D

.field private transient moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

.field private transient siderealT0:D

.field private transient siderealTime:D

.field private transient sunLongitude:D

.field private time:J


# direct methods
.method static synthetic -wrap0(D)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Landroid/icu/impl/CalendarAstronomer;->radToDms(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(D)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Landroid/icu/impl/CalendarAstronomer;->radToHms(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    const-wide v8, 0x4012d97c7f3321d2L    # 4.71238898038469

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide/16 v2, 0x0

    new-instance v0, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    invoke-direct {v0, v2, v3}, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V

    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->VERNAL_EQUINOX:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    new-instance v0, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    invoke-direct {v0, v4, v5}, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V

    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->SUMMER_SOLSTICE:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    new-instance v0, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    invoke-direct {v0, v6, v7}, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V

    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->AUTUMN_EQUINOX:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    new-instance v0, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    invoke-direct {v0, v8, v9}, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V

    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->WINTER_SOLSTICE:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    new-instance v0, Landroid/icu/impl/CalendarAstronomer$MoonAge;

    invoke-direct {v0, v2, v3}, Landroid/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V

    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->NEW_MOON:Landroid/icu/impl/CalendarAstronomer$MoonAge;

    new-instance v0, Landroid/icu/impl/CalendarAstronomer$MoonAge;

    invoke-direct {v0, v4, v5}, Landroid/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V

    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->FIRST_QUARTER:Landroid/icu/impl/CalendarAstronomer$MoonAge;

    new-instance v0, Landroid/icu/impl/CalendarAstronomer$MoonAge;

    invoke-direct {v0, v6, v7}, Landroid/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V

    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->FULL_MOON:Landroid/icu/impl/CalendarAstronomer$MoonAge;

    new-instance v0, Landroid/icu/impl/CalendarAstronomer$MoonAge;

    invoke-direct {v0, v8, v9}, Landroid/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V

    sput-object v0, Landroid/icu/impl/CalendarAstronomer;->LAST_QUARTER:Landroid/icu/impl/CalendarAstronomer$MoonAge;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/CalendarAstronomer;-><init>(J)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 5

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    invoke-direct {p0}, Landroid/icu/impl/CalendarAstronomer;-><init>()V

    mul-double v0, p1, v2

    invoke-static {v0, v1}, Landroid/icu/impl/CalendarAstronomer;->normPI(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->fLongitude:D

    mul-double v0, p3, v2

    invoke-static {v0, v1}, Landroid/icu/impl/CalendarAstronomer;->normPI(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->fLatitude:D

    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->fLongitude:D

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    mul-double/2addr v0, v2

    const-wide v2, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v0, v2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 5

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->fLongitude:D

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->fLatitude:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->julianCentury:D

    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->siderealT0:D

    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->siderealTime:D

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/CalendarAstronomer;-><init>(J)V

    return-void
.end method

.method private clearCache()V
    .locals 2

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianCentury:D

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->siderealTime:D

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->siderealT0:D

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    return-void
.end method

.method private eclipticObliquity()D
    .locals 8

    iget-wide v4, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    const-wide/16 v6, 0x1

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    const-wide v2, 0x4142b42c80000000L    # 2451545.0

    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v4

    const-wide v6, 0x4142b42c80000000L    # 2451545.0

    sub-double/2addr v4, v6

    const-wide v6, 0x40e1d5a000000000L    # 36525.0

    div-double v0, v4, v6

    const-wide v4, 0x3f8aa1edb45c4be9L    # 0.013004166666666666

    mul-double/2addr v4, v0

    const-wide v6, 0x4037707570c564f9L    # 23.439292

    sub-double v4, v6, v4

    const-wide v6, 0x3e865e9f80f29211L    # 1.6666666666666665E-7

    mul-double/2addr v6, v0

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    const-wide v6, 0x3ea0ded40694ce29L    # 5.027777777777778E-7

    mul-double/2addr v6, v0

    mul-double/2addr v6, v0

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    iput-wide v4, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    iget-wide v4, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    const-wide v6, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v4, v6

    iput-wide v4, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    :cond_0
    iget-wide v4, p0, Landroid/icu/impl/CalendarAstronomer;->eclipObliquity:D

    return-wide v4
.end method

.method private getSiderealOffset()D
    .locals 12

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    iget-wide v6, p0, Landroid/icu/impl/CalendarAstronomer;->siderealT0:D

    const-wide/16 v8, 0x1

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v6

    sub-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    add-double v0, v6, v10

    const-wide v6, 0x4142b42c80000000L    # 2451545.0

    sub-double v2, v0, v6

    const-wide v6, 0x40e1d5a000000000L    # 36525.0

    div-double v4, v2, v6

    const-wide v6, 0x40a2c01a48b65237L    # 2400.051336

    mul-double/2addr v6, v4

    const-wide v8, 0x401aca1c8e5eb098L    # 6.697374558

    add-double/2addr v6, v8

    const-wide v8, 0x3efb1e471b7b0e47L    # 2.5862E-5

    mul-double/2addr v8, v4

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    invoke-static {v6, v7, v8, v9}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v6

    iput-wide v6, p0, Landroid/icu/impl/CalendarAstronomer;->siderealT0:D

    :cond_0
    iget-wide v6, p0, Landroid/icu/impl/CalendarAstronomer;->siderealT0:D

    return-wide v6
.end method

.method private lstToUT(D)J
    .locals 11

    const-wide/32 v8, 0x5265c00

    invoke-direct {p0}, Landroid/icu/impl/CalendarAstronomer;->getSiderealOffset()D

    move-result-wide v4

    sub-double v4, p1, v4

    const-wide v6, 0x3fefe9a1dd91bf50L    # 0.9972695663

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    invoke-static {v4, v5, v6, v7}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v2

    iget-wide v4, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    iget-wide v6, p0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    add-long/2addr v4, v6

    div-long/2addr v4, v8

    mul-long/2addr v4, v8

    iget-wide v6, p0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    sub-long v0, v4, v6

    const-wide v4, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v4, v2

    double-to-long v4, v4

    add-long/2addr v4, v0

    return-wide v4
.end method

.method private static final norm2PI(D)D
    .locals 2

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {p0, p1, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static final normPI(D)D
    .locals 6

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    add-double v0, p0, v4

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v0, v1, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v0

    sub-double/2addr v0, v4

    return-wide v0
.end method

.method private static final normalize(DD)D
    .locals 2

    div-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    sub-double v0, p0, v0

    return-wide v0
.end method

.method private static radToDms(D)Ljava/lang/String;
    .locals 12

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    const-wide v8, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v4, p0, v8

    double-to-int v0, v4

    mul-double v4, p0, v8

    int-to-double v6, v0

    sub-double/2addr v4, v6

    mul-double/2addr v4, v10

    double-to-int v1, v4

    mul-double v4, p0, v8

    int-to-double v6, v0

    sub-double/2addr v4, v6

    int-to-double v6, v1

    div-double/2addr v6, v10

    sub-double/2addr v4, v6

    const-wide v6, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static radToHms(D)Ljava/lang/String;
    .locals 12

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    const-wide v8, 0x400e8ec8a4aeacc4L    # 3.819718634205488

    mul-double v4, p0, v8

    double-to-int v0, v4

    mul-double v4, p0, v8

    int-to-double v6, v0

    sub-double/2addr v4, v6

    mul-double/2addr v4, v10

    double-to-int v1, v4

    mul-double v4, p0, v8

    int-to-double v6, v0

    sub-double/2addr v4, v6

    int-to-double v6, v1

    div-double/2addr v6, v10

    sub-double/2addr v4, v6

    const-wide v6, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "h"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private riseOrSet(Landroid/icu/impl/CalendarAstronomer$CoordFunc;ZDDJ)J
    .locals 29

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->fLatitude:D

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->tan(D)D

    move-result-wide v18

    const-wide v10, 0x7fffffffffffffffL

    const/4 v6, 0x0

    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/icu/impl/CalendarAstronomer$CoordFunc;->eval()Landroid/icu/impl/CalendarAstronomer$Equatorial;

    move-result-object v7

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v24, v0

    iget-wide v0, v7, Landroid/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->tan(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    if-eqz p2, :cond_1

    const-wide v24, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v2, v24, v2

    :cond_1
    iget-wide v0, v7, Landroid/icu/impl/CalendarAstronomer$Equatorial;->ascension:D

    move-wide/from16 v24, v0

    add-double v24, v24, v2

    const-wide/high16 v26, 0x4038000000000000L    # 24.0

    mul-double v24, v24, v26

    const-wide v26, 0x401921fb54442d18L    # 6.283185307179586

    div-double v12, v24, v26

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Landroid/icu/impl/CalendarAstronomer;->lstToUT(D)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    move-wide/from16 v24, v0

    sub-long v10, v14, v24

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    add-int/lit8 v6, v6, 0x1

    const/16 v24, 0x5

    move/from16 v0, v24

    if-ge v6, v0, :cond_2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    cmp-long v24, v24, p7

    if-gtz v24, :cond_0

    :cond_2
    iget-wide v0, v7, Landroid/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->fLatitude:D

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    div-double v24, v24, v4

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->acos(D)D

    move-result-wide v16

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v24, p3, v24

    add-double v20, v24, p5

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->asin(D)D

    move-result-wide v22

    const-wide/high16 v24, 0x406e000000000000L    # 240.0

    mul-double v24, v24, v22

    const-wide v26, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v24, v24, v26

    div-double v24, v24, v4

    const-wide v26, 0x408f400000000000L    # 1000.0

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-long v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    move-wide/from16 v24, v0

    if-eqz p2, :cond_3

    neg-long v8, v8

    :cond_3
    add-long v24, v24, v8

    return-wide v24
.end method

.method private timeOfAngle(Landroid/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J
    .locals 24

    invoke-interface/range {p1 .. p1}, Landroid/icu/impl/CalendarAstronomer$AngleFunc;->eval()D

    move-result-wide v14

    sub-double v20, p2, v14

    invoke-static/range {v20 .. v21}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v8

    if-eqz p8, :cond_1

    const-wide/16 v20, 0x0

    :goto_0
    add-double v20, v20, v8

    const-wide v22, 0x4194997000000000L    # 8.64E7

    mul-double v22, v22, p4

    mul-double v20, v20, v22

    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    div-double v10, v20, v22

    move-wide/from16 v16, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    move-wide/from16 v20, v0

    double-to-long v0, v10

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/icu/impl/CalendarAstronomer$AngleFunc;->eval()D

    move-result-wide v4

    sub-double v20, v4, v14

    invoke-static/range {v20 .. v21}, Landroid/icu/impl/CalendarAstronomer;->normPI(D)D

    move-result-wide v20

    div-double v20, v10, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    sub-double v20, p2, v4

    invoke-static/range {v20 .. v21}, Landroid/icu/impl/CalendarAstronomer;->normPI(D)D

    move-result-wide v20

    mul-double v10, v20, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    cmpl-double v20, v20, v22

    if-lez v20, :cond_3

    const-wide v20, 0x4194997000000000L    # 8.64E7

    mul-double v20, v20, p4

    const-wide/high16 v22, 0x4020000000000000L    # 8.0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-long v6, v0

    if-eqz p8, :cond_2

    :goto_1
    add-long v20, v18, v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    invoke-direct/range {p0 .. p8}, Landroid/icu/impl/CalendarAstronomer;->timeOfAngle(Landroid/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J

    move-result-wide v20

    return-wide v20

    :cond_1
    const-wide v20, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    goto :goto_0

    :cond_2
    neg-long v6, v6

    goto :goto_1

    :cond_3
    move-wide/from16 v16, v10

    move-wide v14, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    move-wide/from16 v20, v0

    double-to-long v0, v10

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    move-wide/from16 v0, p6

    long-to-double v0, v0

    move-wide/from16 v22, v0

    cmpl-double v20, v20, v22

    if-gtz v20, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    move-wide/from16 v20, v0

    return-wide v20
.end method

.method private trueAnomaly(DD)D
    .locals 11

    move-wide v0, p1

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, p3

    sub-double v4, v0, v4

    sub-double v2, v4, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, p3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    div-double v4, v2, v4

    sub-double/2addr v0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, p3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, p3

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    return-wide v4
.end method


# virtual methods
.method public final eclipticToEquatorial(D)Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .locals 3

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->eclipticToEquatorial(DD)Landroid/icu/impl/CalendarAstronomer$Equatorial;

    move-result-object v0

    return-object v0
.end method

.method public final eclipticToEquatorial(DD)Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .locals 31

    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/CalendarAstronomer;->eclipticObliquity()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    new-instance v22, Landroid/icu/impl/CalendarAstronomer$Equatorial;

    mul-double v24, v18, v8

    mul-double v26, v20, v16

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v24

    mul-double v26, v14, v8

    mul-double v28, v6, v16

    mul-double v28, v28, v18

    add-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    move-result-wide v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/impl/CalendarAstronomer$Equatorial;-><init>(DD)V

    return-object v22
.end method

.method public final eclipticToEquatorial(Landroid/icu/impl/CalendarAstronomer$Ecliptic;)Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .locals 4

    iget-wide v0, p1, Landroid/icu/impl/CalendarAstronomer$Ecliptic;->longitude:D

    iget-wide v2, p1, Landroid/icu/impl/CalendarAstronomer$Ecliptic;->latitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->eclipticToEquatorial(DD)Landroid/icu/impl/CalendarAstronomer$Equatorial;

    move-result-object v0

    return-object v0
.end method

.method public eclipticToHorizon(D)Landroid/icu/impl/CalendarAstronomer$Horizon;
    .locals 27

    invoke-virtual/range {p0 .. p2}, Landroid/icu/impl/CalendarAstronomer;->eclipticToEquatorial(D)Landroid/icu/impl/CalendarAstronomer$Equatorial;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/CalendarAstronomer;->getLocalSidereal()D

    move-result-wide v22

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    mul-double v22, v22, v24

    const-wide/high16 v24, 0x4028000000000000L    # 12.0

    div-double v22, v22, v24

    iget-wide v0, v14, Landroid/icu/impl/CalendarAstronomer$Equatorial;->ascension:D

    move-wide/from16 v24, v0

    sub-double v2, v22, v24

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget-wide v0, v14, Landroid/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    iget-wide v0, v14, Landroid/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->fLatitude:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->fLatitude:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v22, v16, v20

    mul-double v24, v8, v12

    mul-double v24, v24, v10

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    neg-double v0, v8

    move-wide/from16 v22, v0

    mul-double v22, v22, v12

    mul-double v22, v22, v18

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v24, v24, v20

    sub-double v24, v16, v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    new-instance v15, Landroid/icu/impl/CalendarAstronomer$Horizon;

    invoke-direct {v15, v6, v7, v4, v5}, Landroid/icu/impl/CalendarAstronomer$Horizon;-><init>(DD)V

    return-object v15
.end method

.method public getDate()Ljava/util/Date;
    .locals 4

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getGreenwichSidereal()D
    .locals 8

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->siderealTime:D

    const-wide/16 v4, 0x1

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    long-to-double v2, v2

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3, v6, v7}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v0

    invoke-direct {p0}, Landroid/icu/impl/CalendarAstronomer;->getSiderealOffset()D

    move-result-wide v2

    const-wide v4, 0x3ff00b36e7d9d4aeL    # 1.002737909

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    invoke-static {v2, v3, v6, v7}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v2

    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->siderealTime:D

    :cond_0
    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->siderealTime:D

    return-wide v2
.end method

.method public getJulianCentury()D
    .locals 4

    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianCentury:D

    const-wide/16 v2, 0x1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v0

    const-wide v2, 0x41426cd600000000L    # 2415020.0

    sub-double/2addr v0, v2

    const-wide v2, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianCentury:D

    :cond_0
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianCentury:D

    return-wide v0
.end method

.method public getJulianDay()D
    .locals 4

    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    const-wide/16 v2, 0x1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    const-wide v2, -0xbfc83e532200L

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    :cond_0
    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    return-wide v0
.end method

.method public getLocalSidereal()D
    .locals 6

    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getGreenwichSidereal()D

    move-result-wide v0

    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    long-to-double v2, v2

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    invoke-static {v0, v1, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->normalize(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMoonAge()D
    .locals 4

    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getMoonPosition()Landroid/icu/impl/CalendarAstronomer$Equatorial;

    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMoonPhase()D
    .locals 4

    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getMoonAge()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getMoonPosition()Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .locals 38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    move-object/from16 v34, v0

    if-nez v34, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/CalendarAstronomer;->getSunLongitude()D

    move-result-wide v26

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v34

    const-wide v36, 0x4142ad09c0000000L    # 2447891.5

    sub-double v14, v34, v36

    const-wide v34, 0x3fcd6fb4ccd0bc8dL    # 0.22997150421858628

    mul-double v34, v34, v14

    const-wide v36, 0x401639a2a09c75e2L    # 5.556284436750021

    add-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v20

    const-wide v34, 0x3f5fdb459d100168L    # 0.001944368345221015

    mul-double v34, v34, v14

    sub-double v34, v20, v34

    const-wide v36, 0x3fe44bdb3881627cL    # 0.6342598060246725

    sub-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v18

    sub-double v34, v20, v26

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v34, v34, v36

    sub-double v34, v34, v18

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    const-wide v36, 0x3f96c471a926a187L    # 0.022233749341155764

    mul-double v16, v36, v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    const-wide v36, 0x3f6a90b0aba4fc89L    # 0.003242821750205464

    mul-double v10, v36, v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    const-wide v36, 0x3f7a736889d66dd0L    # 0.00645771823237902

    mul-double v6, v36, v34

    sub-double v34, v16, v10

    sub-double v34, v34, v6

    add-double v18, v18, v34

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    const-wide v36, 0x3fbc1905209a88deL    # 0.10975677534091541

    mul-double v12, v36, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    mul-double v34, v34, v18

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    const-wide v36, 0x3f6e98df535623b2L    # 0.0037350045992678655

    mul-double v8, v36, v34

    add-double v34, v20, v16

    add-double v34, v34, v12

    sub-double v34, v34, v10

    add-double v34, v34, v8

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    move-wide/from16 v34, v0

    sub-double v34, v34, v26

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    const-wide v36, 0x3f8787ceeab4c1caL    # 0.011489502465878671

    mul-double v28, v36, v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    move-wide/from16 v34, v0

    add-double v34, v34, v28

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    const-wide v34, 0x3f4e48eb230f0fe5L    # 9.242199067718253E-4

    mul-double v34, v34, v14

    const-wide v36, 0x40163c779efc0d54L    # 5.559050068029439

    sub-double v34, v36, v34

    invoke-static/range {v34 .. v35}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    const-wide v36, 0x3f66e05a695f8191L    # 0.0027925268031909274

    mul-double v34, v34, v36

    sub-double v24, v24, v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    move-wide/from16 v34, v0

    sub-double v34, v34, v24

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->moonLongitude:D

    move-wide/from16 v34, v0

    sub-double v34, v34, v24

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    const-wide v34, 0x3fb6fd5e063b1d97L    # 0.08980357792017056

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v34, v34, v32

    move-wide/from16 v0, v34

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v34

    add-double v34, v34, v24

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    const-wide v34, 0x3fb6fd5e063b1d97L    # 0.08980357792017056

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    mul-double v34, v34, v32

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->asin(D)D

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->moonEclipLong:D

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    move-wide/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/impl/CalendarAstronomer;->eclipticToEquatorial(DD)Landroid/icu/impl/CalendarAstronomer$Equatorial;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/CalendarAstronomer;->moonPosition:Landroid/icu/impl/CalendarAstronomer$Equatorial;

    move-object/from16 v34, v0

    return-object v34
.end method

.method public getMoonRiseSet(Z)J
    .locals 10

    new-instance v2, Landroid/icu/impl/CalendarAstronomer$4;

    invoke-direct {v2, p0}, Landroid/icu/impl/CalendarAstronomer$4;-><init>(Landroid/icu/impl/CalendarAstronomer;)V

    const-wide/32 v8, 0xea60

    const-wide v4, 0x3f830d3e7ef4bd1bL    # 0.009302604913129777

    const-wide v6, 0x3f8441500d4c900dL    # 0.009890199094634533

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v9}, Landroid/icu/impl/CalendarAstronomer;->riseOrSet(Landroid/icu/impl/CalendarAstronomer$CoordFunc;ZDDJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMoonTime(DZ)J
    .locals 9

    new-instance v1, Landroid/icu/impl/CalendarAstronomer$3;

    invoke-direct {v1, p0}, Landroid/icu/impl/CalendarAstronomer$3;-><init>(Landroid/icu/impl/CalendarAstronomer;)V

    const-wide/32 v6, 0xea60

    const-wide v4, 0x403d87d4abcb41d5L    # 29.530588853

    move-object v0, p0

    move-wide v2, p1

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/icu/impl/CalendarAstronomer;->timeOfAngle(Landroid/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMoonTime(Landroid/icu/impl/CalendarAstronomer$MoonAge;Z)J
    .locals 2

    iget-wide v0, p1, Landroid/icu/impl/CalendarAstronomer$MoonAge;->value:D

    invoke-virtual {p0, v0, v1, p2}, Landroid/icu/impl/CalendarAstronomer;->getMoonTime(DZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSunLongitude()D
    .locals 6

    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    const-wide/16 v4, 0x1

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getJulianDay()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->getSunLongitude(D)[D

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    iput-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->meanAnomalySun:D

    :cond_0
    iget-wide v2, p0, Landroid/icu/impl/CalendarAstronomer;->sunLongitude:D

    return-wide v2
.end method

.method getSunLongitude(D)[D
    .locals 13

    const-wide v10, 0x4013bdaf8cee89a2L    # 4.935239984568769

    const-wide v6, 0x4142ad09c0000000L    # 2447891.5

    sub-double v0, p1, v6

    const-wide v6, 0x3f919d9bcdd8ac02L    # 0.017202791632524146

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v2

    const-wide v6, 0x4013818b33ddeee0L    # 4.87650757829735

    add-double/2addr v6, v2

    sub-double/2addr v6, v10

    invoke-static {v6, v7}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v4

    const/4 v6, 0x2

    new-array v6, v6, [D

    const-wide v8, 0x3f911d3671ac14c6L    # 0.016713

    invoke-direct {p0, v4, v5, v8, v9}, Landroid/icu/impl/CalendarAstronomer;->trueAnomaly(DD)D

    move-result-wide v8

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Landroid/icu/impl/CalendarAstronomer;->norm2PI(D)D

    move-result-wide v8

    const/4 v7, 0x0

    aput-wide v8, v6, v7

    const/4 v7, 0x1

    aput-wide v4, v6, v7

    return-object v6
.end method

.method public getSunPosition()Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .locals 4

    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getSunLongitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->eclipticToEquatorial(DD)Landroid/icu/impl/CalendarAstronomer$Equatorial;

    move-result-object v0

    return-object v0
.end method

.method public getSunRiseSet(Z)J
    .locals 20

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/icu/impl/CalendarAstronomer;->time:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    add-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/icu/impl/CalendarAstronomer;->fGmtOffset:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x2932e00

    add-long v14, v4, v6

    if-eqz p1, :cond_0

    const-wide/16 v4, -0x6

    :goto_0
    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    add-long/2addr v4, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    new-instance v6, Landroid/icu/impl/CalendarAstronomer$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/icu/impl/CalendarAstronomer$2;-><init>(Landroid/icu/impl/CalendarAstronomer;)V

    const-wide/16 v12, 0x1388

    const-wide v8, 0x3f830d3e7ef4bd1bL    # 0.009302604913129777

    const-wide v10, 0x3f8441500d4c900dL    # 0.009890199094634533

    move-object/from16 v5, p0

    move/from16 v7, p1

    invoke-direct/range {v5 .. v13}, Landroid/icu/impl/CalendarAstronomer;->riseOrSet(Landroid/icu/impl/CalendarAstronomer$CoordFunc;ZDDJ)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    return-wide v16

    :cond_0
    const-wide/16 v4, 0x6

    goto :goto_0
.end method

.method public getSunTime(DZ)J
    .locals 9

    new-instance v1, Landroid/icu/impl/CalendarAstronomer$1;

    invoke-direct {v1, p0}, Landroid/icu/impl/CalendarAstronomer$1;-><init>(Landroid/icu/impl/CalendarAstronomer;)V

    const-wide/32 v6, 0xea60

    const-wide v4, 0x4076d3e003ab862bL    # 365.242191

    move-object v0, p0

    move-wide v2, p1

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/icu/impl/CalendarAstronomer;->timeOfAngle(Landroid/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSunTime(Landroid/icu/impl/CalendarAstronomer$SolarLongitude;Z)J
    .locals 2

    iget-wide v0, p1, Landroid/icu/impl/CalendarAstronomer$SolarLongitude;->value:D

    invoke-virtual {p0, v0, v1, p2}, Landroid/icu/impl/CalendarAstronomer;->getSunTime(DZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    return-wide v0
.end method

.method public local(J)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    int-to-long v2, v1

    sub-long v2, p1, v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    return-void
.end method

.method public setJulianDay(D)V
    .locals 5

    const-wide v0, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v0, p1

    double-to-long v0, v0

    const-wide v2, -0xbfc83e532200L

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    invoke-direct {p0}, Landroid/icu/impl/CalendarAstronomer;->clearCache()V

    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer;->julianDay:D

    return-void
.end method

.method public setTime(J)V
    .locals 1

    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer;->time:J

    invoke-direct {p0}, Landroid/icu/impl/CalendarAstronomer;->clearCache()V

    return-void
.end method
