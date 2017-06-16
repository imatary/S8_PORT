.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;
.super Ljava/lang/Object;
.source "FloatPair.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_FloatPair__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 3

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_FloatPair__SWIG_1(FF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_FloatPair__SWIG_2(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->delete_FloatPair(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;->delete()V

    return-void
.end method

.method public getFirst()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->FloatPair_first_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;)F

    move-result v0

    return v0
.end method

.method public getSecond()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->FloatPair_second_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;)F

    move-result v0

    return v0
.end method

.method public setFirst(F)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->FloatPair_first_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;F)V

    return-void
.end method

.method public setSecond(F)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->FloatPair_second_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;F)V

    return-void
.end method
