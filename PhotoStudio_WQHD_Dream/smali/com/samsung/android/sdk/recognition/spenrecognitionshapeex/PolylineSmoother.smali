.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PolylineSmoother;
.super Ljava/lang/Object;
.source "PolylineSmoother.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_PolylineSmoother()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PolylineSmoother;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PolylineSmoother;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PolylineSmoother;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PolylineSmoother;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PolylineSmoother;->swigCPtr:J

    goto :goto_0
.end method

.method public static linearize(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;FFF)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LinesFVector;
    .locals 7

    new-instance v6, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LinesFVector;

    invoke-static {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J

    move-result-wide v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PolylineSmoother_linearize(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;FFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LinesFVector;-><init>(JZ)V

    return-object v6
.end method

.method public static smoothPolyline(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfoVector;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfoVector;

    invoke-static {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PolylineSmoother_smoothPolyline(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfoVector;-><init>(JZ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PolylineSmoother;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PolylineSmoother;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PolylineSmoother;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PolylineSmoother;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->delete_PolylineSmoother(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PolylineSmoother;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PolylineSmoother;->delete()V

    return-void
.end method
