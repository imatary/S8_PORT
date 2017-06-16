.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;
.super Ljava/lang/Object;
.source "LineF.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_LineF__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

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

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_LineF__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;-><init>(JZ)V

    return-void
.end method

.method public static cos(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)F
    .locals 6

    invoke-static {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_cos(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)F

    move-result v0

    return v0
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    goto :goto_0
.end method

.method public static getOverlappedLineSegment(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;
    .locals 7

    new-instance v6, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;

    invoke-static {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getOverlappedLineSegment(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;-><init>(JZ)V

    return-object v6
.end method


# virtual methods
.method public compare(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_compare(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)Z

    move-result v0

    return v0
.end method

.method public containsPoint(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_containsPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->delete_LineF(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J
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

.method public directLineFromPoint(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;
    .locals 7

    new-instance v6, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_directLineFromPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;-><init>(JZ)V

    return-object v6
.end method

.method public extendLine(F)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_extendLine__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;F)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;-><init>(JZ)V

    return-object v0
.end method

.method public extendLine(FLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineEnds;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-virtual {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineEnds;->ordinal()I

    move-result v1

    invoke-static {v2, v3, p0, p1, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_extendLine__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;FI)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;-><init>(JZ)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->delete()V

    return-void
.end method

.method public getA()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getA(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)F

    move-result v0

    return v0
.end method

.method public getB()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getB(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)F

    move-result v0

    return v0
.end method

.method public getBoundingBox()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getBoundingBox(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;-><init>(JZ)V

    return-object v0
.end method

.method public getC()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getC(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)F

    move-result v0

    return v0
.end method

.method public getCrossPoint(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;
    .locals 7

    new-instance v6, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getCrossPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;-><init>(JZ)V

    return-object v6
.end method

.method public getDistanceFromSegment(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;
    .locals 7

    new-instance v6, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getDistanceFromSegment(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/FloatPair;-><init>(JZ)V

    return-object v6
.end method

.method public getDistanceToSegment(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)F
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getDistanceToSegment(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)F

    move-result v0

    return v0
.end method

.method public getEndPoint()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getEndPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;-><init>(JZ)V

    return-object v0
.end method

.method public getFarthestPointIndex(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;JJ)J
    .locals 10

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-static/range {v0 .. v9}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getFarthestPointIndex(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHalfPlaneIndex(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)I
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getHalfPlaneIndex(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)I

    move-result v0

    return v0
.end method

.method public getLength()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getLength(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)F

    move-result v0

    return v0
.end method

.method public getMiddlePoint()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getMiddlePoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;-><init>(JZ)V

    return-object v0
.end method

.method public getModuleAB()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getModuleAB(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)F

    move-result v0

    return v0
.end method

.method public getParallelLine(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;
    .locals 7

    new-instance v6, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getParallelLine(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;-><init>(JZ)V

    return-object v6
.end method

.method public getPerpendicularLine(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;
    .locals 7

    new-instance v6, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getPerpendicularLine(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;-><init>(JZ)V

    return-object v6
.end method

.method public getPointProjection(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;
    .locals 7

    new-instance v6, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getPointProjection(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;-><init>(JZ)V

    return-object v6
.end method

.method public getPointRelfection(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;
    .locals 7

    new-instance v6, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getPointRelfection(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;-><init>(JZ)V

    return-object v6
.end method

.method public getPointsRelfection(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;
    .locals 7

    new-instance v6, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getPointsRelfection(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;-><init>(JZ)V

    return-object v6
.end method

.method public getRevertLine()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getRevertLine(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;-><init>(JZ)V

    return-object v0
.end method

.method public getSignedDistanceToPoint(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)F
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getSignedDistanceToPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)F

    move-result v0

    return v0
.end method

.method public getSquareDistanceToSegment(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)F
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getSquareDistanceToSegment(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)F

    move-result v0

    return v0
.end method

.method public getSquareLength()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getSquareLength(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)F

    move-result v0

    return v0
.end method

.method public getStartPoint()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_getStartPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;-><init>(JZ)V

    return-object v0
.end method

.method public hasIntersection(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_hasIntersection(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)Z

    move-result v0

    return v0
.end method

.method public isLineContinueLine(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;F)Z
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_isLineContinueLine(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;F)Z

    move-result v0

    return v0
.end method

.method public isPointLocalToLine(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;F)Z
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_isPointLocalToLine(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;F)Z

    move-result v0

    return v0
.end method

.method public isPointLocalToSegment(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;F)Z
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_isPointLocalToSegment(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;F)Z

    move-result v0

    return v0
.end method

.method public isPointOnEnd(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;F)Z
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_isPointOnEnd(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;F)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_isValid(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)Z

    move-result v0

    return v0
.end method

.method public revert()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_revert(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;)V

    return-void
.end method

.method public squareDistanceToLine(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)F
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->LineF_squareDistanceToLine(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/LineF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)F

    move-result v0

    return v0
.end method
