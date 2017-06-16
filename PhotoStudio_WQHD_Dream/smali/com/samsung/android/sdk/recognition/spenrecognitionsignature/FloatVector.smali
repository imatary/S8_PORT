.class public Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;
.super Ljava/lang/Object;
.source "FloatVector.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->new_FloatVector__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->new_FloatVector__SWIG_1(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public add(F)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->FloatVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;F)V

    return-void
.end method

.method public capacity()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->FloatVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;)J

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->FloatVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->delete_FloatVector(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;->delete()V

    return-void
.end method

.method public get(I)F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->FloatVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;I)F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->FloatVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;)Z

    move-result v0

    return v0
.end method

.method public reserve(J)V
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->FloatVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;J)V

    return-void
.end method

.method public set(IF)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->FloatVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;IF)V

    return-void
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->FloatVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/FloatVector;)J

    move-result-wide v0

    return-wide v0
.end method
