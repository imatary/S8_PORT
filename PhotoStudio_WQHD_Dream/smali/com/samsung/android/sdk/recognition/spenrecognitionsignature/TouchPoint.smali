.class public Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;
.super Ljava/lang/Object;
.source "TouchPoint.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->new_TouchPoint__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 3

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->new_TouchPoint__SWIG_6(FF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(FFD)V
    .locals 3

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->new_TouchPoint__SWIG_5(FFD)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(FFDF)V
    .locals 3

    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->new_TouchPoint__SWIG_4(FFDF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->new_TouchPoint__SWIG_3(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;D)V
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->new_TouchPoint__SWIG_2(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;D)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DF)V
    .locals 6

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)J

    move-result-wide v0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->new_TouchPoint__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public addBatch(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_addBatch__SWIG_4(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)V

    return-void
.end method

.method public addBatch(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;D)V
    .locals 8

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_addBatch__SWIG_3(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;D)V

    return-void
.end method

.method public addBatch(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DF)V
    .locals 10

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_addBatch__SWIG_2(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DF)V

    return-void
.end method

.method public addBatch(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DFF)V
    .locals 10

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move v8, p4

    move v9, p5

    invoke-static/range {v0 .. v9}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_addBatch__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DFF)V

    return-void
.end method

.method public addBatch(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DFFF)V
    .locals 12

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v0 .. v10}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_addBatch__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DFFF)V

    return-void
.end method

.method public addHistoricalPoint(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_addHistoricalPoint__SWIG_4(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)V

    return-void
.end method

.method public addHistoricalPoint(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;D)V
    .locals 8

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_addHistoricalPoint__SWIG_3(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;D)V

    return-void
.end method

.method public addHistoricalPoint(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DF)V
    .locals 10

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_addHistoricalPoint__SWIG_2(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DF)V

    return-void
.end method

.method public addHistoricalPoint(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DFF)V
    .locals 10

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move v8, p4

    move v9, p5

    invoke-static/range {v0 .. v9}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_addHistoricalPoint__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DFF)V

    return-void
.end method

.method public addHistoricalPoint(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DFFF)V
    .locals 12

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v0 .. v10}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_addHistoricalPoint__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;DFFF)V

    return-void
.end method

.method public compare(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_compare(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->delete_TouchPoint(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->delete()V

    return-void
.end method

.method public getHistoricalOrientation(J)F
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_getHistoricalOrientation(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;J)F

    move-result v0

    return v0
.end method

.method public getHistoricalPoint(J)Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;
    .locals 5

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_getHistoricalPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;J)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;-><init>(JZ)V

    return-object v0
.end method

.method public getHistoricalPressure(J)F
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_getHistoricalPressure(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;J)F

    move-result v0

    return v0
.end method

.method public getHistoricalTilt(J)F
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_getHistoricalTilt(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;J)F

    move-result v0

    return v0
.end method

.method public getHistoricalTimestamp(J)D
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_getHistoricalTimestamp(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getHistoricalX(J)F
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_getHistoricalX(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;J)F

    move-result v0

    return v0
.end method

.method public getHistoricalY(J)F
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_getHistoricalY(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;J)F

    move-result v0

    return v0
.end method

.method public getHistorySize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_getHistorySize(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOrientation()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_getOrientation(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)F

    move-result v0

    return v0
.end method

.method public getPoint()Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_getPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;-><init>(JZ)V

    return-object v0
.end method

.method public getPressure()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_getPressure(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)F

    move-result v0

    return v0
.end method

.method public getTilt()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_getTilt(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)F

    move-result v0

    return v0
.end method

.method public getTimestamp()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_getTimestamp(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getX()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_getX(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_getY(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;)F

    move-result v0

    return v0
.end method

.method public setHistoricalPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)V
    .locals 9

    iget-wide v1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {p3}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)J

    move-result-wide v6

    move-object v3, p0

    move-wide v4, p1

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_setHistoricalPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JJLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)V

    return-void
.end method

.method public setOrientation(F)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_setOrientation(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;F)V

    return-void
.end method

.method public setPoint(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_setPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/PointF;)V

    return-void
.end method

.method public setPressure(F)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_setPressure(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;F)V

    return-void
.end method

.method public setTilt(F)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_setTilt(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;F)V

    return-void
.end method

.method public setTimestamp(D)V
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->TouchPoint_setTimestamp(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/TouchPoint;D)V

    return-void
.end method
