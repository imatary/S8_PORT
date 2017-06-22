.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;
.super Ljava/lang/Object;
.source "RectF.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_RectF__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 3

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_RectF__SWIG_2(FFFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)V
    .locals 6

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_RectF__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->swigCPtr:J

    goto :goto_0
.end method

.method public static makeRect(FFFF)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RectF_makeRect__SWIG_1(FFFF)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;-><init>(JZ)V

    return-object v0
.end method

.method public static makeRect(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;
    .locals 7

    new-instance v6, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;

    invoke-static {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RectF_makeRect__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;-><init>(JZ)V

    return-object v6
.end method


# virtual methods
.method public areOverlap(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RectF_areOverlap(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)Z

    move-result v0

    return v0
.end method

.method public compare(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RectF_compare(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)Z

    move-result v0

    return v0
.end method

.method public containsPoint(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RectF_containsPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->delete_RectF(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->swigCPtr:J
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

.method public extendBounds(F)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RectF_extendBounds(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;F)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;-><init>(JZ)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->delete()V

    return-void
.end method

.method public getHeight()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RectF_getHeight(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)F

    move-result v0

    return v0
.end method

.method public getLeftTop()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RectF_getLeftTop(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;-><init>(JZ)V

    return-object v0
.end method

.method public getRightBottom()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RectF_getRightBottom(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;-><init>(JZ)V

    return-object v0
.end method

.method public getWidth()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RectF_getWidth(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)F

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RectF_isValid(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)Z

    move-result v0

    return v0
.end method

.method public mergeBounds(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;
    .locals 7

    new-instance v6, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RectF_mergeBounds(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;-><init>(JZ)V

    return-object v6
.end method
