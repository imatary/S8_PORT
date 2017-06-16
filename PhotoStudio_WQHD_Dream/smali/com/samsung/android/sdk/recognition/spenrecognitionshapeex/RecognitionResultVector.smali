.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;
.super Ljava/lang/Object;
.source "RecognitionResultVector.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_RecognitionResultVector__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_RecognitionResultVector__SWIG_1(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResult;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResult;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResult;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RecognitionResultVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResult;)V

    return-void
.end method

.method public capacity()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RecognitionResultVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;)J

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RecognitionResultVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->delete_RecognitionResultVector(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;->delete()V

    return-void
.end method

.method public get(I)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResult;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResult;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RecognitionResultVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;I)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResult;-><init>(JZ)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RecognitionResultVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;)Z

    move-result v0

    return v0
.end method

.method public reserve(J)V
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RecognitionResultVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;J)V

    return-void
.end method

.method public set(ILcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResult;)V
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;->swigCPtr:J

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResult;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResult;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RecognitionResultVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResult;)V

    return-void
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RecognitionResultVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;)J

    move-result-wide v0

    return-wide v0
.end method
