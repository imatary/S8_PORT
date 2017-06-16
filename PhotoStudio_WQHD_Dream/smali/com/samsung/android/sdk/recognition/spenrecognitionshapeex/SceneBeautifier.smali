.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;
.super Ljava/lang/Object;
.source "SceneBeautifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier$ProcessFlags;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_SceneBeautifier__SWIG_1()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_SceneBeautifier__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->delete_SceneBeautifier(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;->delete()V

    return-void
.end method

.method public process(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifier_process__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)Z

    move-result v0

    return v0
.end method

.method public process(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;J)Z
    .locals 8

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifier_process__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;J)Z

    move-result v0

    return v0
.end method

.method public processShapeAdjustingToAxis(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifier_processShapeAdjustingToAxis(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)Z

    move-result v0

    return v0
.end method

.method public processShapeAligning(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifier_processShapeAligning(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)Z

    move-result v0

    return v0
.end method

.method public processShapeCircumscribing(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifier_processShapeCircumscribing(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)Z

    move-result v0

    return v0
.end method

.method public processShapeLinking(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifier_processShapeLinking(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)Z

    move-result v0

    return v0
.end method

.method public processShapeStandardize(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifier_processShapeStandardize(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifier;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/Scene;)Z

    move-result v0

    return v0
.end method
