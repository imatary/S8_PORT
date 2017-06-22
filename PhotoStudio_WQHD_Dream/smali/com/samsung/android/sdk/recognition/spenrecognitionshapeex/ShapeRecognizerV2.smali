.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerV2;
.super Ljava/lang/Object;
.source "ShapeRecognizerV2.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ShapeRecognizerV2()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerV2;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerV2;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerV2;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerV2;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerV2;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerV2;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerV2;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerV2;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerV2;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->delete_ShapeRecognizerV2(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerV2;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerV2;->delete()V

    return-void
.end method

.method public recognize(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorPointFVectors;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;
    .locals 10

    new-instance v9, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerV2;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorPointFVectors;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorPointFVectors;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeRecognizerV2_recognize(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeRecognizerV2;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorPointFVectors;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionResultVector;-><init>(JZ)V

    return-object v9
.end method
