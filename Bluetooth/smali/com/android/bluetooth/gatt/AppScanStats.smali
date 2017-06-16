.class Lcom/android/bluetooth/gatt/AppScanStats;
.super Ljava/lang/Object;
.source "AppScanStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/AppScanStats$LastScan;
    }
.end annotation


# static fields
.field static final EXCESSIVE_SCANNING_PERIOD_MS:J = 0x7530L

.field static final NUM_SCAN_DURATIONS_KEPT:I = 0x5

.field static final dateFormat:Ljava/text/DateFormat;


# instance fields
.field appName:Ljava/lang/String;

.field contextMap:Lcom/android/bluetooth/gatt/ContextMap;

.field gattService:Lcom/android/bluetooth/gatt/GattService;

.field isRegistered:Z

.field isScanning:Z

.field lastScans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/AppScanStats$LastScan;",
            ">;"
        }
    .end annotation
.end field

.field maxScanTime:J

.field minScanTime:J

.field results:I

.field scansStarted:I

.field scansStopped:I

.field startTime:J

.field stopTime:J

.field totalScanTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/gatt/AppScanStats;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/bluetooth/gatt/ContextMap;Lcom/android/bluetooth/gatt/GattService;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/bluetooth/gatt/AppScanStats;->scansStarted:I

    iput v2, p0, Lcom/android/bluetooth/gatt/AppScanStats;->scansStopped:I

    iput-boolean v2, p0, Lcom/android/bluetooth/gatt/AppScanStats;->isScanning:Z

    iput-boolean v2, p0, Lcom/android/bluetooth/gatt/AppScanStats;->isRegistered:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->minScanTime:J

    iput-wide v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->maxScanTime:J

    iput-wide v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->totalScanTime:J

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    iput-wide v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->startTime:J

    iput-wide v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->stopTime:J

    iput v2, p0, Lcom/android/bluetooth/gatt/AppScanStats;->results:I

    iput-object p1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->appName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/bluetooth/gatt/AppScanStats;->contextMap:Lcom/android/bluetooth/gatt/ContextMap;

    iput-object p3, p0, Lcom/android/bluetooth/gatt/AppScanStats;->gattService:Lcom/android/bluetooth/gatt/GattService;

    return-void
.end method

.method private truncateAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    move-object v0, p1

    const-string/jumbo v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-le v2, v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v2, v1

    if-ne v2, v5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized addResult()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    iget v1, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->results:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->results:I

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->results:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->results:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized dumpToString(Ljava/lang/StringBuilder;)V
    .locals 30

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->maxScanTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->minScanTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v25

    if-eqz v25, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->isScanning:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->startTime:J

    move-wide/from16 v26, v0

    sub-long v22, v12, v26

    move-wide/from16 v0, v22

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    move-wide/from16 v0, v22

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    :cond_1
    const-wide v26, 0x7fffffffffffffffL

    cmp-long v25, v20, v26

    if-nez v25, :cond_2

    const-wide/16 v20, 0x0

    :cond_2
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->scansStarted:I

    move/from16 v25, v0

    if-lez v25, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->totalScanTime:J

    move-wide/from16 v26, v0

    add-long v26, v26, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->scansStarted:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    div-long v6, v26, v28

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    const-string/jumbo v25, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->appName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->isRegistered:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    const-string/jumbo v25, " (Registered)"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v0, v15, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->opportunistic:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    const-string/jumbo v25, " (Opportunistic)"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v0, v15, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->background:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    const-string/jumbo v25, " (Background)"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-boolean v0, v15, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->timeout:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    const-string/jumbo v25, " (Forced-Opportunistic)"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string/jumbo v25, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v25, "  LE scans (started/stopped)         : "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->scansStarted:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " / "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->scansStopped:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v25, "  Scan time in ms (min/max/avg/total): "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " / "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " / "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " / "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->totalScanTime:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v25, "  Total number of results            : "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->results:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    if-eqz v25, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->scansStopped:I

    move/from16 v25, v0

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->scansStopped:I

    move/from16 v16, v0

    :goto_0
    const-string/jumbo v25, "  Last "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " scans                       :\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v11, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    new-instance v24, Ljava/util/Date;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->timestamp:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string/jumbo v25, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/android/bluetooth/gatt/AppScanStats;->dateFormat:Ljava/text/DateFormat;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " - "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->duration:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "ms "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->opportunistic:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    const-string/jumbo v25, "Opp "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->background:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    const-string/jumbo v25, "Back "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->timeout:Z

    move/from16 v25, v0

    if-eqz v25, :cond_a

    const-string/jumbo v25, "Forced "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->results:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " results"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v25, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_b
    const/16 v16, 0x5

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->contextMap:Lcom/android/bluetooth/gatt/ContextMap;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->appName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/bluetooth/gatt/ContextMap;->getByName(Ljava/lang/String;)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->isRegistered:Z

    move/from16 v25, v0

    if-eqz v25, :cond_e

    const-string/jumbo v25, "  Application ID                     : "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v4, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v25, "  UUID                               : "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v4, Lcom/android/bluetooth/gatt/ContextMap$App;->uuid:Ljava/util/UUID;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->isScanning:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    const-string/jumbo v25, "  Current scan duration in ms        : "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/AppScanStats;->contextMap:Lcom/android/bluetooth/gatt/ContextMap;

    move-object/from16 v25, v0

    iget v0, v4, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/bluetooth/gatt/ContextMap;->getConnectionByApp(I)Ljava/util/List;

    move-result-object v10

    const-string/jumbo v25, "  Connections: "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    iget-wide v0, v5, Lcom/android/bluetooth/gatt/ContextMap$Connection;->startTime:J

    move-wide/from16 v28, v0

    sub-long v8, v26, v28

    const-string/jumbo v25, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v5, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ": "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v5, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "ms\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v25

    monitor-exit p0

    throw v25

    :cond_e
    :try_start_2
    const-string/jumbo v25, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void
.end method

.method declared-synchronized isScanningTooFrequently()Z
    .locals 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    iget-wide v4, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->timestamp:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized recordScanStart(Landroid/bluetooth/le/ScanSettings;)V
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->isScanning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->scansStarted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->scansStarted:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->isScanning:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/gatt/AppScanStats;->startTime:J

    new-instance v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    iget-wide v2, p0, Lcom/android/bluetooth/gatt/AppScanStats;->startTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;-><init>(Lcom/android/bluetooth/gatt/AppScanStats;JJZZ)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    move v1, v9

    :goto_0
    iput-boolean v1, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->opportunistic:Z

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    move v1, v9

    :goto_1
    iput-boolean v1, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->background:Z

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    invoke-direct {v8}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->setScanEventType(I)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->setScanTechnologyType(I)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->setEventTimeMillis(J)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->appName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/AppScanStats;->truncateAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->setInitiator(Ljava/lang/String;)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->gattService:Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/gatt/GattService;->addScanEvent(Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    move v1, v10

    goto :goto_0

    :cond_3
    move v1, v10

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized recordScanStop()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->isScanning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->scansStopped:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->scansStopped:I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->isScanning:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->stopTime:J

    iget-wide v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->stopTime:J

    iget-wide v6, p0, Lcom/android/bluetooth/gatt/AppScanStats;->startTime:J

    sub-long v2, v4, v6

    iget-wide v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->minScanTime:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->minScanTime:J

    iget-wide v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->maxScanTime:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->maxScanTime:J

    iget-wide v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->totalScanTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->totalScanTime:J

    iget-object v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    iget-object v5, p0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    iput-wide v2, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->duration:J

    iget-object v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    new-instance v1, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    invoke-direct {v1}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->setScanEventType(I)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->setScanTechnologyType(I)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->setEventTimeMillis(J)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->appName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/bluetooth/gatt/AppScanStats;->truncateAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->setInitiator(Ljava/lang/String;)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->gattService:Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v4, v1}, Lcom/android/bluetooth/gatt/GattService;->addScanEvent(Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized setScanTimeout()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->isScanning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/AppScanStats;->lastScans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->timeout:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
