.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;
.super Ljava/lang/Object;
.source "SceneObjectVisitor.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_SceneObjectVisitor()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;-><init>(JZ)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCPtr:J

    iget-boolean v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCMemOwn:Z

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneObjectVisitor_director_connect(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;JZZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->delete_SceneObjectVisitor(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->delete()V

    return-void
.end method

.method protected swigDirectorDisconnect()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCMemOwn:Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->delete()V

    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCPtr:J

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneObjectVisitor_change_ownership(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;JZ)V

    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCPtr:J

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneObjectVisitor_change_ownership(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;JZ)V

    return-void
.end method

.method public visit(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectConnector;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectConnector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectConnector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneObjectVisitor_visit__SWIG_3(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectConnector;)V

    return-void
.end method

.method public visit(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectPolygon;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectPolygon;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectPolygon;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneObjectVisitor_visit__SWIG_2(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectPolygon;)V

    return-void
.end method

.method public visit(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectPolyline;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectPolyline;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectPolyline;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneObjectVisitor_visit__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectPolyline;)V

    return-void
.end method

.method public visit(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectShape;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectShape;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectShape;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneObjectVisitor_visit__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectVisitor;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneObjectShape;)V

    return-void
.end method
