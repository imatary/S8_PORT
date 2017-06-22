.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;
.super Ljava/lang/Object;
.source "ConnectorRecognitionResult.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ConnectorRecognitionResult__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SizeTVector;)V
    .locals 6

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SizeTVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SizeTVector;)J

    move-result-wide v3

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ConnectorRecognitionResult__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SizeTVector;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ConnectorRecognitionResult__SWIG_2(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->delete_ConnectorRecognitionResult(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;->delete()V

    return-void
.end method

.method public getConnectorInfo()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ConnectorRecognitionResult_getConnectorInfo__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;-><init>(JZ)V

    return-object v0
.end method

.method public getIndexesOfGestures()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SizeTVector;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SizeTVector;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ConnectorRecognitionResult_getIndexesOfGestures__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorRecognitionResult;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SizeTVector;-><init>(JZ)V

    return-object v0
.end method
