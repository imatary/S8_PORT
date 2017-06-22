.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer;
.super Ljava/lang/Object;
.source "SceneRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer$RecognitionMode;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_SceneRecognizer()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->delete_SceneRecognizer(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer;->delete()V

    return-void
.end method

.method public recognize(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;)Z
    .locals 12

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;)J

    move-result-wide v6

    invoke-static {p3}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneRecognizer_recognize__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;)Z

    move-result v0

    return v0
.end method

.method public recognize(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;J)Z
    .locals 14

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)J

    move-result-wide v3

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;)J

    move-result-wide v6

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    move-wide/from16 v12, p4

    invoke-static/range {v0 .. v13}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneRecognizer_recognize__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneRecognizer;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneStrokeVector;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;J)Z

    move-result v0

    return v0
.end method
