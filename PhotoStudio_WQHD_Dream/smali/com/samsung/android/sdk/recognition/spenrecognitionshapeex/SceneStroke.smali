.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;
.super Ljava/lang/Object;
.source "SceneStroke.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_SceneStroke__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_SceneStroke__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;)V
    .locals 6

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;)J

    move-result-wide v3

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_SceneStroke__SWIG_2(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->delete_SceneStroke(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;->delete()V

    return-void
.end method

.method public getPoints()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneStroke_points_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;)J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;-><init>(JZ)V

    goto :goto_0
.end method

.method public getStyle()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneStroke_style_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;)J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;-><init>(JZ)V

    goto :goto_0
.end method

.method public setPoints(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneStroke_points_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)V

    return-void
.end method

.method public setStyle(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneStroke_style_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStroke;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeStyle;)V

    return-void
.end method
