.class final Landroid/icu/util/UniversalTimeScale$TimeScaleData;
.super Ljava/lang/Object;
.source "UniversalTimeScale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/UniversalTimeScale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeScaleData"
.end annotation


# instance fields
.field epochOffset:J

.field epochOffsetM1:J

.field epochOffsetP1:J

.field fromMax:J

.field fromMin:J

.field maxRound:J

.field minRound:J

.field toMax:J

.field toMin:J

.field units:J

.field unitsRound:J


# direct methods
.method constructor <init>(JJJJJJ)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    const-wide/16 v2, 0x2

    div-long v2, p1, v2

    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    iget-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    const-wide/high16 v4, -0x8000000000000000L

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->minRound:J

    iget-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    const-wide v4, 0x7fffffffffffffffL

    sub-long v2, v4, v2

    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->maxRound:J

    div-long v2, p3, p1

    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J

    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J

    :goto_0
    iput-wide p5, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMin:J

    iput-wide p7, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMax:J

    move-wide/from16 v0, p9

    iput-wide v0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMin:J

    move-wide/from16 v0, p11

    iput-wide v0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMax:J

    return-void

    :cond_0
    iget-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J

    iget-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J

    goto :goto_0
.end method
